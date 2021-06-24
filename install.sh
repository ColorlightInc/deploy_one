#!/bin/bash

#users
COLORLIGHT_USER=colorlight
COLORLIGHT_USER_UID=3991
COLORLIGHT_GROUP=colorlight
COLORLIGHT_GROUP_GID=3991
MYSQL_USER=mysql
NGINX_USER=www-data

#secret
SECRET_ROOT=/usr/local/etc/colorlight
_mysql_password_output=${SECRET_ROOT}/mysql.secret
#TODO 传参或输入
_jasypt_salt_output=${SECRET_ROOT}/jasypt.secret

CCLOUD_SQL_INIT_JOB_IMAGE=colorlightwzg/ccloud-sql-init-job:latest
CURR_PATH=$(pwd)
OUTPUT_DIR=${CURR_PATH}/clt_deploy
TEMPLATE_DIR=${CURR_PATH}/template

target_dir=$1
if [ "$target_dir" ]; then
  if [ -d "$target_dir" ]; then
    OUTPUT_DIR=$(realpath ${target_dir})/clt_deploy
    echo "用户指定部署目录 ：${OUTPUT_DIR}"
  else
    echo "Usage : $0 [部署目录的位置]"
    exit 1
  fi
fi
makeCertificateDir() {
  local _nginx_server_address=$1
  _certificate_dir="${OUTPUT_DIR}/nginx/letsencrypt/live/${_nginx_server_address}"
  mkdir -p ${_certificate_dir}
  cat ${TEMPLATE_DIR}/certificate/fullchain.pem >${_certificate_dir}/fullchain.pem && chmod 400 ${_certificate_dir}/fullchain.pem
  cat ${TEMPLATE_DIR}/certificate/privkey.pem >${_certificate_dir}/privkey.pem && chmod 400 ${_certificate_dir}/privkey.pem
}
checkUsers() {
  egrep "$COLORLIGHT_GROUP" /etc/group >&/dev/null
  if [ $? -ne 0 ]; then
    groupadd $COLORLIGHT_GROUP -g $COLORLIGHT_GROUP_GID
  fi

  egrep "$COLORLIGHT_USER" /etc/passwd >&/dev/null
  if [ $? -ne 0 ]; then
    useradd $COLORLIGHT_USER -g $COLORLIGHT_GROUP -u $COLORLIGHT_USER_UID -m -s /sbin/nologin
  fi

  egrep "$MYSQL_USER" /etc/passwd >&/dev/null
  if [ $? -ne 0 ]; then
    useradd $MYSQL_USER -g $COLORLIGHT_GROUP -m -s /sbin/nologin
  fi

  egrep "NGINX_USER" /etc/passwd >&/dev/null
  if [ $? -ne 0 ]; then
    useradd NGINX_USER -g $COLORLIGHT_GROUP -m -s /sbin/nologin
  fi
}
check_and_install_docker() {
  docker -v
  if [ $? -eq 0 ]; then
    docker_status=$(service docker status | grep Active | awk '{print $2}')
    if [ $docker_status != "active" ]; then
      systemctl start docker
      echo "restart docker service"
    fi
    echo "docker service already exists."
  else
    curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
    if [ $? -eq 0 ]; then
      echo "docker-ce install success."
    else
      echo "install docker fail from https://get.docker.com, check your network."
      exit 1
    fi
  fi
}
check_and_install_docker_compose() {
  docker-compose -v >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    #docker_compose install
    sudo curl -L --fail https://github.com/docker/compose/releases/download/1.27.4/run.sh -o /usr/local/bin/docker-compose >/dev/null 2>&1
    sudo chmod +x /usr/local/bin/docker-compose
  fi

  docker-compose -v >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "docker-compose install success."
  else
    echo "install docker-compose fail from https://github.com/docker/compose/releases/download/1.27.4/run.sh, check your network."
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
  echo "[NOTE] 正在初始化数据库数据...请稍等几分钟(请不要操作以免导致数据库初始化失败)"

  docker network create one-nw >/dev/null 2>&1
  docker volume create ${_mysql_data_volume} >/dev/null 2>&1

  local _database=spring
  local _password=$(_generate_random16_pwd)

  docker run --restart=always -d \
  -e MYSQL_ROOT_PASSWORD=${_password} \
  -e MYSQL_DATABASE=${_database} \
  -v ${_mysql_data_volume}:/var/lib/mysql \
  --name init-data \
  --network one-nw \
  ${_mysql_docker_image} >/dev/null 2>&1 && sleep 150

  echo ${_password} | base64 >${_mysql_password_output}
  echo "[NOTE] 初始化数据库完成! 数据库密码(base64)存放在:【${_mysql_password_output}】."
}
_after_init_mysql_data() {
  docker network rm one-nw >/dev/null 2>&1
  docker rm -f init-data >/dev/null 2>&1
}

#Usage _run_ccloud_sql_init_job [host] [database] [password]
_run_ccloud_sql_init_job() {
  local _container_network=${OUTPUT_DIR##*/}_one-nw
  local _container_log_volume=tmp_job_log
  local _host=$1
  local _database=$2
  local _password=$3
  docker pull ${CCLOUD_SQL_INIT_JOB_IMAGE} >/dev/null 2>&1 && \
  docker volume create ${_container_log_volume} >/dev/null 2>&1 && \
  docker run --rm \
  -v ${_container_log_volume}:/out \
  --network ${_container_network} \
  ${CCLOUD_SQL_INIT_JOB_IMAGE} --password=${_password} --database=${_database} --host=${_host} >/dev/null 2>&1

  cat /var/lib/docker/volumes/${_container_log_volume}/_data/log && \
  docker volume rm ${_container_log_volume} >/dev/null 2>&1
}

read_configuration() {
  _address=$(cat config | grep _address | awk -F= '{print $2}' | sed -e 's/http:\/\///g' -e 's/https:\/\///g')
  _port=$(cat config | grep -m 1 _port | awk -F= '{print $2}')
  _open_ssl=$(cat config | grep _open_ssl | awk -F= '{print $2}')
  _port_websocket=$(cat config | grep _port_websocket | awk -F= '{print $2}')

  if [ -z $_address ]; then
    _address=$(curl -s --connect-timeout 10 -m 20 curl http://members.3322.org/dyndns/getip)
    if [ $? -ne 0 ]; then
      echo "please set your [ip/address] in configuration file:${CURR_PATH}/config"
      exit 1
    fi
  fi

  if [ $_open_ssl = 'true' ]; then
    sed -e "s|listen 9999;|listen ${_port_websocket};|g" -e "s|AAAA|${_address}|g" ${TEMPLATE_DIR}/ssl_myconf.conf.template >${OUTPUT_DIR}/nginx/myconf.conf
    sed -e "s|server-url: AAAA|server_url: https://${_address}|g" -e "s|corPort: 8888|corPort: 443|g" ${TEMPLATE_DIR}/application.yml.template >${OUTPUT_DIR}/app/application.yml
    makeCertificateDir ${_address}
  else
    sed -e "s|listen 8888;|listen ${_port};|g" -e "s|server_name AAAA;|server_name ${_address};|g" ${TEMPLATE_DIR}/myconf.conf.template >${OUTPUT_DIR}/nginx/myconf.conf
    sed -e "s|server-url: AAAA|server_url: http://${_address}|g" -e "s|corPort: 8888|corPort: ${_port}|g" ${TEMPLATE_DIR}/application.yml.template >${OUTPUT_DIR}/app/application.yml
  fi
  chmod 600 ${OUTPUT_DIR}/nginx/myconf.conf
}
_check_jasypt_salt() {
  if [ ! -e ${_jasypt_salt_output} ]; then
      _generate_random16_pwd | base64 > ${_jasypt_salt_output}
      echo "[NOTE] 生成新的敏感信息加密密码(base64),存放在:【${_jasypt_salt_output}】."
  fi
}
update_compose_file() {
  _one_app_tag=$(cat config | grep -m 1 _one_app | awk -F= '{print $2}')
  _one_nginx_tag=$(cat config | grep -m 1 _one_nginx | awk -F= '{print $2}')
  _one_redis_tag=$(cat config | grep -m 1 _one_redis | awk -F= '{print $2}')
  _one_ws_tag=$(cat config | grep -m 1 _one_ws | awk -F= '{print $2}')
  _one_mysql_tag=$(cat config | grep -m 1 _one_mysql | awk -F= '{print $2}')

  _port=$(cat config | grep -m 1 _port | awk -F= '{print $2}')
  _port_websocket=$(cat config | grep _port_websocket | awk -F= '{print $2}')

  _check_jasypt_salt && \
  _java_options+=" -Djasypt.encryptor.password=$(base64 -d ${_jasypt_salt_output})"

  sed -e "s| colorlightwzg/one-mysql:TAG| colorlightwzg/one-mysql:${_one_mysql_tag}| g" \
  -e "s| colorlightwzg/one-app:TAG| colorlightwzg/one-app:${_one_app_tag}| g" \
  -e "s| colorlightwzg/one-nginx:TAG| colorlightwzg/one-nginx:${_one_nginx_tag}| g" \
  -e "s| colorlightwzg/one-ws:TAG| colorlightwzg/one-ws:${_one_ws_tag}| g" \
  -e "s| colorlightwzg/one-redis:TAG| colorlightwzg/one-redis:${_one_redis_tag}| g" \
  -e "s| JAVA_TOOL_OPTIONS: -| JAVA_TOOL_OPTIONS: ${_java_options}| g" \
  -e "s| - PORT_80:80| - ${_port}:80| g" \
  -e "s| - PORT_WS:8443| - ${_port_websocket}:8443| g" \
  ${TEMPLATE_DIR}/docker-compose.yml.template >${OUTPUT_DIR}/docker-compose.yml
}

check_secret_home() {
  if [ ! -e "${SECRET_ROOT}" ]; then
    mkdir -p -m 600 ${SECRET_ROOT}
    chown ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${SECRET_ROOT}
  fi
}

makeDir() {
  mkdir -p $OUTPUT_DIR && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} $OUTPUT_DIR
  echo "正在初始化colorlight cloud部署目录:$(realpath $CURR_PATH)..."
  cp -r ${TEMPLATE_DIR}/mysql ${OUTPUT_DIR} && chown -R ${MYSQL_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/mysql
  #nginx要属于root
  cp -r ${TEMPLATE_DIR}/nginx ${OUTPUT_DIR} && \
  chmod 600 ${OUTPUT_DIR}/nginx && \
  chmod 600 ${OUTPUT_DIR}/nginx/nginx.conf
  chmod 400 ${OUTPUT_DIR}/nginx/ssl/dhparam.pem
  cp -r ${TEMPLATE_DIR}/redis ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/redis
  cp -r ${TEMPLATE_DIR}/ws ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/ws
  mkdir -p ${OUTPUT_DIR}/app && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/app
}
before_start_services() {
  MYSQL_DATABASE_DATA_VOLUME="${OUTPUT_DIR##*/}_one_db_data"
  docker volume ls | grep $MYSQL_DATABASE_DATA_VOLUME >/dev/null 2>&1
  if [ $? -ne 0 -o ! -d "/var/lib/docker/volumes/${MYSQL_DATABASE_DATA_VOLUME}/_data/mysql" ]; then
    _need_to_init="true"
  fi

  if [ -n "$_need_to_init" ]; then
    _init_mysql_data "colorlightwzg/one-mysql:${_one_mysql_tag}" "$MYSQL_DATABASE_DATA_VOLUME"
    #todo 可以加个探测
    _after_init_mysql_data
  fi
}
start_services() {
  cd ${OUTPUT_DIR} && docker-compose down && docker-compose up -d
  echo "[NOTE] 服务启动中..."
}
after_start_services() {
  sleep 5
  #华为红线nginx扫描 3.4
  docker exec -i one-nginx bash -c \
  "sed -i 's/daily/weekly/' /etc/logrotate.d/nginx && sed -i 's/rotate 52/rotate 13/' /etc/logrotate.d/nginx && rm -rf /usr/share/nginx/html/index.html" \
  >/dev/null 2>&1

  _run_ccloud_sql_init_job "one-mysql" "spring" "$(base64 -d ${_mysql_password_output})"
}
_MAIN() {
  check_and_install_docker && check_and_install_docker_compose
  checkUsers && check_secret_home
  #read and set configuration
  makeDir && read_configuration
  #read and reset docker images version
  update_compose_file
  #init data
  before_start_services
  start_services
  after_start_services
  echo "[SUCCESS] clorlight cloud部署完成！"
}

_MAIN "$@"
