#!/bin/bash

#tools
DOCKER_COMPOSE_VERSION=1.27.4
#users
COLORLIGHT_USER=colorlight
COLORLIGHT_USER_UID=3991
COLORLIGHT_GROUP=colorlight
COLORLIGHT_GROUP_GID=3991
MYSQL_USER=mysql
#secret
SECRET_ROOT=/usr/local/etc/colorlight
MYSQL_SECRET=${SECRET_ROOT}/mysql.secret
JASYPT_SECRET=${SECRET_ROOT}/jasypt.secret
AES_SECRET=${SECRET_ROOT}/aes.secret

CCLOUD_SQL_INIT_JOB_IMAGE=colorlightwzg/ccloud-sql-init-job:latest
JASYPT_ENCODER_IMAGE=colorlightwzg/jasypt-encoder:2.1.1
CURR_PATH=$(pwd)
OUTPUT_DIR=${CURR_PATH}/clt_deploy
TEMPLATE_DIR=${CURR_PATH}/template

#Usage _info [format] [arg1 [arg2 [...]]]
_info() {
  local format=$1
  shift 1
  printf "%s [INFO]: ${format}\n" "$(date --rfc-3339=seconds)" "$@"
}

#Usage _error [format] [arg1 [arg2 [...]]]
_error() {
  local format=$1
  shift 1
  printf "%s [ERROR]: ${format}" "$(date --rfc-3339=seconds)" "$@"
}

_make_certificate_dir() {
  local _nginx_server_address=$1
  _certificate_dir="${OUTPUT_DIR}/nginx/letsencrypt/live/${_nginx_server_address}"
  mkdir -p ${_certificate_dir}
  cat ${TEMPLATE_DIR}/certificate/fullchain.pem >${_certificate_dir}/fullchain.pem && chmod 400 ${_certificate_dir}/fullchain.pem
  cat ${TEMPLATE_DIR}/certificate/privkey.pem >${_certificate_dir}/privkey.pem && chmod 400 ${_certificate_dir}/privkey.pem
}

_check_and_create_app_users() {
  egrep "$COLORLIGHT_GROUP" /etc/group >&/dev/null
  if [ $? -ne 0 ]; then
    groupadd $COLORLIGHT_GROUP -g $COLORLIGHT_GROUP_GID
    _info "%s : [%s]" "Create group" "$COLORLIGHT_GROUP"
  fi

  egrep "$COLORLIGHT_USER" /etc/passwd >&/dev/null
  if [ $? -ne 0 ]; then
    useradd $COLORLIGHT_USER -g $COLORLIGHT_GROUP -u $COLORLIGHT_USER_UID -m -s /sbin/nologin
    _info "%s : [%s]" "Create user" "$COLORLIGHT_USER"
  fi
#
#  egrep "$MYSQL_USER" /etc/passwd >&/dev/null
#  if [ $? -ne 0 ]; then
#    useradd $MYSQL_USER -g $COLORLIGHT_GROUP -m -s /sbin/nologin
#    _info "%s : [%s]" "Create user" "$MYSQL_USER"
#  fi

}
_check_and_install_docker() {
  docker -v
  if [ $? -eq 0 ]; then
    docker_status=$(service docker status | grep Active | awk '{print $2}')
    if [ $docker_status != "active" ]; then
      systemctl start docker
      _info "%s" "Restart docker service."
    fi
    _info "%s" "Docker service is available."
  else
    curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
    if [ $? -eq 0 ]; then
      _info "%s" "docker-ce install success."
    else
      _error "%s" "Install docker fail from https://get.docker.com, check your network."
      exit 1
    fi
  fi
}
_check_and_install_docker_compose() {
  docker-compose -v >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    #docker_compose install
    sudo curl -L --fail https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/run.sh -o /usr/local/bin/docker-compose >/dev/null 2>&1
    sudo chmod +x /usr/local/bin/docker-compose
  fi

  docker-compose -v >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    _info "%s" "Docker-compose is available."
  else
    _error "%s" "Install docker-compose fail from https://github.com/docker/compose/releases/download/1.27.4/run.sh, check your network."
    exit 1
  fi
}

_generate_random16_pwd() {
  local key="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  local num=${#key}
  local pass=''
  for i in {1..16}; do
    index=$((RANDOM % num))
    pass=$pass${key:$index:1}
  done
  echo $pass
}

# $1 image $2 data dir
_init_mysql_data() {
  local _mysql_docker_image=$1
  local _mysql_data_volume=$2
  _info "%s" "正在初始化数据库数据...请稍等几分钟(请不要操作以免导致数据库初始化失败)"

  docker network create one-nw >/dev/null 2>&1
  docker volume create "${_mysql_data_volume}" >/dev/null 2>&1

  local _database=spring
  local _password=$(_generate_random16_pwd)

  docker run --restart=always -d \
  -u root:root \
  -e MYSQL_ROOT_PASSWORD=${_password} \
  -e MYSQL_DATABASE=${_database} \
  -v ${_mysql_data_volume}:/var/lib/mysql \
  --name init-data \
  --network one-nw \
  ${_mysql_docker_image} >/dev/null 2>&1 && \
  sleep 150

  echo ${_password} | base64 >${MYSQL_SECRET}
  _info "%s" "数据库数据初始化完成! 数据库密码(base64)存放在:【${MYSQL_SECRET}】"
}
_after_init_mysql_data() {
  _info "%s" "Clear init-data container."
  docker network rm one-nw >/dev/null 2>&1
  docker rm -f init-data >/dev/null 2>&1
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${_mysql_data_volume}/_data" >/dev/null 2>&1
}

#Usage _run_ccloud_sql_init_job [host] [database] [password]
_run_ccloud_sql_init_job() {
  local _container_network=${OUTPUT_DIR##*/}_one-nw
  local _container_log_volume=tmp_job_log
  local _host=$1
  local _database=$2
  local _password=$3
  docker pull ${CCLOUD_SQL_INIT_JOB_IMAGE} >/dev/null 2>&1 &&
    docker volume create ${_container_log_volume} >/dev/null 2>&1 &&
    docker run --rm \
  -v ${_container_log_volume}:/out \
  --network ${_container_network} \
  ${CCLOUD_SQL_INIT_JOB_IMAGE} --password=${_password} --database=${_database} --host=${_host} >/dev/null 2>&1

  cat /var/lib/docker/volumes/${_container_log_volume}/_data/log &&
    docker volume rm ${_container_log_volume} >/dev/null 2>&1
}

_format_app_config() {
  _address=$(cat config | grep _address | awk -F= '{print $2}' | sed -e 's/http:\/\///g' -e 's/https:\/\///g')
  _port=$(cat config | grep -m 1 _port | awk -F= '{print $2}')
  _open_ssl=$(cat config | grep _open_ssl | awk -F= '{print $2}')
  _port_websocket=$(cat config | grep _port_websocket | awk -F= '{print $2}')
  _nginx_allow_cidr=$(cat config | grep _nginx_allow_cidr | awk -F= '{print $2}')
  if [ ! "${_nginx_allow_cidr}" ]; then
    _nginx_allow_cidr=all
  fi
  if [ -z $_address ]; then
    _address=$(curl -s --connect-timeout 10 -m 20 curl http://members.3322.org/dyndns/getip)
    if [ $? -ne 0 ]; then
      _error "please set your [ip/address] in configuration file:${CURR_PATH}/config"
      exit 1
    fi
  fi

  if [ $_open_ssl = 'true' ]; then
    sed -e "s|listen 9999;|listen ${_port_websocket};|g" \
    -e "s|allow NGINX_ALLOW; deny all;|allow ${_nginx_allow_cidr}; deny all;|g" \
    -e "s|AAAA|${_address}|g" ${TEMPLATE_DIR}/ssl_myconf.conf.template >${OUTPUT_DIR}/nginx/myconf.conf
    sed -e "s|server-url: AAAA|server_url: https://${_address}|g" -e "s|corPort: 8888|corPort: 443|g" ${TEMPLATE_DIR}/application.yml.template >${OUTPUT_DIR}/app/application.yml
    _make_certificate_dir ${_address}
  else
    sed -e "s|listen 8888;|listen ${_port};|g" -e "s|server_name AAAA;|server_name ${_address};|g" ${TEMPLATE_DIR}/myconf.conf.template >${OUTPUT_DIR}/nginx/myconf.conf
    sed -e "s|server-url: AAAA|server_url: http://${_address}|g" -e "s|corPort: 8888|corPort: ${_port}|g" ${TEMPLATE_DIR}/application.yml.template >${OUTPUT_DIR}/app/application.yml
  fi
  chmod 600 ${OUTPUT_DIR}/nginx/myconf.conf
  chown ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/nginx/myconf.conf
}
_jasypt_encrypt() {
  docker run --rm $JASYPT_ENCODER_IMAGE $1 $2
}
#注意！如果第一次部署失败，这个地方不会复原，需要手动改app配置模板的数据库密码
_format_template_encrypt_word() {
  local jasypt_password=$1
  local mysql_password=$2
  docker pull $JASYPT_ENCODER_IMAGE >/dev/null 2>&1

  local enc_mysql_password="$(_jasypt_encrypt "${jasypt_password}" "${mysql_password}")"
  #动态加密mysql密码
  sed -i "s| password: -MYSQL ENC-| password: ENC(${enc_mysql_password})|" ${TEMPLATE_DIR}/application.yml.template >/dev/null 2>&1
}

_check_secret() {
  if [ -z "$JASYPT_PASSWORD" ]; then
    if [ ! -e ${JASYPT_SECRET} ]; then
      _error "%s\n - %s\n - %s\n" "未找到配置加密密码!请参考以下任一方式:" "使用命令行参数: bash install.sh --password=[密码的base64格式]." "将密码的base64格式放在文件[${JASYPT_SECRET}]"
      exit 1
    fi
    JASYPT_PASSWORD="$(cat ${JASYPT_SECRET})"
  else
    _info "%s:[%s*****]" "使用自定义的配置信息加密密码" "${JASYPT_PASSWORD:0:6}"
  fi
  if [ -z "$AES_PASSWORD" ]; then
    if [ ! -e ${AES_SECRET} ]; then
      _error "%s\n - %s\n - %s\n" "未找到敏感信息加密密码!请参考以下任一方式:" "使用命令行参数: bash install.sh --aes-key=[密码的base64格式]." "将密码的base64格式放在文件[${AES_SECRET}]"
      exit 1
    fi
    AES_PASSWORD="$(cat ${AES_SECRET})"
  else
    if [ -e ${AES_SECRET} ]; then
      mv "${AES_SECRET}" "${AES_SECRET}.bk"
    fi
    echo ${AES_PASSWORD} >${AES_SECRET}
    _info "%s:[%s*****]" "使用自定义的敏感信息加密密码" "${AES_PASSWORD:0:6}"
  fi
}
_format_compose_file() {
  _one_app_tag=$(cat config | grep -m 1 _one_app | awk -F= '{print $2}')
  _one_nginx_tag=$(cat config | grep -m 1 _one_nginx | awk -F= '{print $2}')
  _one_redis_tag=$(cat config | grep -m 1 _one_redis | awk -F= '{print $2}')
  _one_ws_tag=$(cat config | grep -m 1 _one_ws | awk -F= '{print $2}')
  _one_zk_tag=$(cat config | grep -m 1 _one_zk | awk -F= '{print $2}')
  _one_mysql_tag=$(cat config | grep -m 1 _one_mysql | awk -F= '{print $2}')

  _port=$(cat config | grep -m 1 _port | awk -F= '{print $2}')
  _port_websocket=$(cat config | grep _port_websocket | awk -F= '{print $2}')

  _java_options+=" -Djasypt.encryptor.password=$(echo "${JASYPT_PASSWORD}" | base64 -d)"
  _java_options+=" -Dclt.aes.key=$(echo "${AES_PASSWORD}" | base64 -d)"

  sed -e "s| colorlightwzg/one-mysql:TAG| colorlightwzg/one-mysql:${_one_mysql_tag}| g" \
  -e "s| colorlightwzg/one-app:TAG| colorlightwzg/one-app:${_one_app_tag}| g" \
  -e "s| colorlightwzg/one-nginx:TAG| colorlightwzg/one-nginx:${_one_nginx_tag}| g" \
  -e "s| colorlightwzg/one-ws:TAG| colorlightwzg/one-ws:${_one_ws_tag}| g" \
  -e "s| colorlightwzg/zookeeper:TAG| colorlightwzg/zookeeper:${_one_zk_tag}| g" \
  -e "s| colorlightwzg/one-redis:TAG| colorlightwzg/one-redis:${_one_redis_tag}| g" \
  -e "s| JAVA_TOOL_OPTIONS: -| JAVA_TOOL_OPTIONS: ${_java_options}| g" \
  -e "s| - PORT_80:80| - ${_port}:80| g" \
  -e "s| - PORT_WS:8443| - ${_port_websocket}:8443| g" \
  ${TEMPLATE_DIR}/docker-compose.yml.template >${OUTPUT_DIR}/docker-compose.yml
}

_check_and_make_secret_home() {
  if [ ! -e "${SECRET_ROOT}" ]; then
    mkdir -p ${SECRET_ROOT}
  fi
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${SECRET_ROOT} >/dev/null 2>&1
  chmod 600 -R ${SECRET_ROOT} >/dev/null 2>&1
}

_make_deploy_home() {
  _info "%s" "正在初始化Colorlight cloud platform部署目录:$(realpath $CURR_PATH)..."
  mkdir -p $OUTPUT_DIR && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} $OUTPUT_DIR
  cp -r ${TEMPLATE_DIR}/mysql ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/mysql
  #nginx要属于root
  cp -r ${TEMPLATE_DIR}/nginx ${OUTPUT_DIR} &&
    chmod 600 ${OUTPUT_DIR}/nginx &&
    chmod 600 ${OUTPUT_DIR}/nginx/nginx.conf &&
    chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/nginx
  chmod 400 ${OUTPUT_DIR}/nginx/ssl/dhparam.pem
  cp -r ${TEMPLATE_DIR}/redis ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/redis
  cp -r ${TEMPLATE_DIR}/ws ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/ws
  mkdir -p ${OUTPUT_DIR}/app && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/app
}
_docker_nginx_exec() {
  docker exec -i one-nginx "$@"
}
before_start_services() {
  _check_and_install_docker
  _check_and_install_docker_compose
  _check_and_create_app_users
  _check_and_make_secret_home

  _check_secret

  #first deploy
  local mysql_db_data_volume="${OUTPUT_DIR##*/}_one_db_data"
  docker volume ls | grep $mysql_db_data_volume >/dev/null 2>&1
  if [ $? -ne 0 -o ! -d "/var/lib/docker/volumes/${mysql_db_data_volume}/_data/mysql" ]; then
    _init_mysql_data "colorlightwzg/one-mysql:$(cat config | grep -m 1 _one_mysql | awk -F= '{print $2}')" "$mysql_db_data_volume"
    _after_init_mysql_data
    _format_template_encrypt_word "$(echo "${JASYPT_PASSWORD}" | base64 -d)" "$(base64 -d $MYSQL_SECRET)"
  fi

  #print from template
  _make_deploy_home
  _format_app_config
  _format_compose_file
}

start_services() {
  _info "%s" "服务启动中..."
  cd ${OUTPUT_DIR} && docker-compose down && docker-compose up -d
}
after_start_services() {
  _info "%s" "正在检查初始数据..."
  sleep 5
  #华为红线nginx扫描 3.4
#  _docker_nginx_exec rm -rf /usr/share/nginx/html/index.html >/dev/null 2>&1
  #  _docker_nginx_exec bash -c ""

  _run_ccloud_sql_init_job "one-mysql" "spring" "$(base64 -d ${MYSQL_SECRET})"

  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${SECRET_ROOT} && \
  chmod 400 -R ${SECRET_ROOT} >/dev/null 2>&1
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${OUTPUT_DIR}/nginx && \
  chmod 600 -R ${OUTPUT_DIR}/nginx/logrotate && \
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} /var/lib/docker/volumes/clt_deploy_nginx_log_data/_data && \
  chmod 777 -R /var/lib/docker/volumes/clt_deploy_spring_uploads_data/_data && \
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} /var/lib/docker/volumes/clt_deploy_spring_uploads_data/_data

  docker restart one-nginx >/dev/null 2>&1

  rm "${OUTPUT_DIR}"/docker-compose.yml
}
MAIN() {
  before_start_services && \
  start_services && \
  after_start_services && \
  _info "%s" "Deploy Colorlight Cloud platform successfully!"
}

ARGS=$(getopt -o p:r,a: --long password:,renew,aes-key: -- "$@")
eval set -- "${ARGS}"
while :; do
  case $1 in
  -p | --password)
    JASYPT_PASSWORD=$2
    shift
    ;;
  -a | --aes-key)
    AES_PASSWORD=$2
    shift
    ;;
  -r | --renew)
    exec sh ssl_renew_letsencrypt.sh
    ;;
  --)
    shift
    break
    ;;
  *)
    _error "%s" "Unknown param $1"
    exit 1
    ;;
  esac
  shift
done

target_dir=$1
if [ "$target_dir" ]; then
  if [ -d "$target_dir" ]; then
    OUTPUT_DIR=$(realpath ${target_dir})/clt_deploy
    _info "%s" "用户指定部署目录 ：${OUTPUT_DIR}"
  else
    _error "%s" "Usage : $0 [部署目录的位置]"
    exit 1
  fi
fi
MAIN "$@"
