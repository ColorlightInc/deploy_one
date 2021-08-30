#!/bin/bash

#tools
DOCKER_COMPOSE_VERSION=1.27.4
#users
COLORLIGHT_USER=colorlight
COLORLIGHT_USER_UID=3991
COLORLIGHT_GROUP=colorlight
COLORLIGHT_GROUP_GID=3991
#secret
SECRET_ROOT=/usr/local/etc/colorlight
SECRET_FILE=${SECRET_ROOT}/clt.secret
SECRET_FILE_MD5=${SECRET_ROOT}/clt.md5
#images
CCLOUD_SQL_INIT_JOB_IMAGE=colorlightwzg/ccloud-sql-init-job:latest
#JASYPT_ENCODER_IMAGE=colorlightwzg/jasypt-encoder:2.1.1
AES_CIPHER_IMAGE=colorlightwzg/aes-cipher:v1
#dirs
VOLUME_DIR=/var/lib/docker/volumes
CURR_PATH=$(pwd)
OUTPUT_DIR=${CURR_PATH}/clt_deploy
TEMPLATE_DIR=${CURR_PATH}/template
MYSQL_DATA_DOCKER_VOLUME="${OUTPUT_DIR##*/}_one_db_data"

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
  printf "%s [ERROR]: ${format}\n" "$(date --rfc-3339=seconds)" "$@"
  exit 1
}
#aes/cbc/padding5
#Usage: _aes_encrypt key iv text
_aes_encrypt() {
  docker run --rm $AES_CIPHER_IMAGE "$1" "$2" 1 "$3"
}
#aes/cbc/padding5
#Usage: _aes_decrypt key iv text
_aes_decrypt() {
  docker run --rm $AES_CIPHER_IMAGE "$1" "$2" 2 "$3"
}
#从文件提取变量值
#Usage: _get_env file_path key
_get_env() {
  local env_file=$1
  local key=$2
  #防止value中有=号
  grep -m 1 "^${key}=" "${env_file}" | awk -F= '{for(i=2;i<NF;i++){v=v""$i"="};print v""$NF}'
}
_get_work_key() {
  # shellcheck disable=SC2155
  local root_key=$(base64 -d "${SECRET_FILE}" | grep "root.key" | awk -F= '{print $2}')
  # shellcheck disable=SC2155
  local root_iv=$(base64 -d "${SECRET_FILE}" | grep "root.iv" | awk -F= '{print $2}')
  _aes_decrypt "${root_key}" "${root_iv}" "$(base64 -d "${SECRET_FILE}" | grep "AES.key" | awk -F= '{for(i=2;i<NF;i++){v=v""$i"="};print v""$NF}')"
}
_get_work_iv() {
  # shellcheck disable=SC2155
  local root_key=$(base64 -d "${SECRET_FILE}" | grep "root.key" | awk -F= '{print $2}')
  # shellcheck disable=SC2155
  local root_iv=$(base64 -d "${SECRET_FILE}" | grep "root.iv" | awk -F= '{print $2}')
  _aes_decrypt "${root_key}" "${root_iv}" "$(base64 -d "${SECRET_FILE}" | grep "AES.iv" | awk -F= '{for(i=2;i<NF;i++){v=v""$i"="};print v""$NF}')"
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

_make_certificate_dir() {
  local _nginx_server_address=$1
  _certificate_dir="${OUTPUT_DIR}/nginx/letsencrypt/live/${_nginx_server_address}"
  mkdir -p "${_certificate_dir}"
  cat "${TEMPLATE_DIR}/certificate/fullchain.pem" >"${_certificate_dir}/fullchain.pem" && chmod 400 "${_certificate_dir}/fullchain.pem"
  cat "${TEMPLATE_DIR}/certificate/privkey.pem" >"${_certificate_dir}/privkey.pem" && chmod 400 "${_certificate_dir}/privkey.pem"
}

_check_and_create_app_users() {
  grep -E "$COLORLIGHT_GROUP" /etc/group >&/dev/null
  if [ $? -ne 0 ]; then
    groupadd $COLORLIGHT_GROUP -g $COLORLIGHT_GROUP_GID
    _info "%s : [%s]" "Create group" "$COLORLIGHT_GROUP"
  fi

  grep -E "$COLORLIGHT_USER" /etc/passwd >&/dev/null
  if [ $? -ne 0 ]; then
    useradd $COLORLIGHT_USER -g $COLORLIGHT_GROUP -u $COLORLIGHT_USER_UID -m -s /sbin/nologin
    _info "%s : [%s]" "Create user" "$COLORLIGHT_USER"
  fi
}
_check_and_install_docker_env() {
  #docker
  docker -v
  if [ $? -eq 0 ]; then
    docker_status=$(service docker status | grep Active | awk '{print $2}')
    if [ "$docker_status" != "active" ]; then
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
    fi
  fi
  #docker-compose
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
  fi
}

# $1 image $2 data dir
_init_mysql_data() {
  local _mysql_docker_image=$1
  local _mysql_data_volume=$2
  _info "%s" "正在初始化数据库数据...请稍等几分钟(请不要操作以免导致数据库初始化失败)"

  docker network create one-nw >/dev/null 2>&1
  docker volume create "${_mysql_data_volume}" >/dev/null 2>&1

  local _database=spring
  local mysql_password=$(_generate_random16_pwd)

  docker run --restart=always -d \
  -u root:root \
  -e MYSQL_ROOT_PASSWORD="${mysql_password}" \
  -e MYSQL_DATABASE=${_database} \
  -v "${_mysql_data_volume}":/var/lib/mysql \
  --name init-data \
  --network one-nw \
  "${_mysql_docker_image}" >/dev/null 2>&1
  sleep 150

  _info "%s" "数据库数据初始化完成! 数据库密码:【${mysql_password}】"

  #after init mysql data
  _info "%s" "Clear init-data container."

  docker rm -f init-data >/dev/null 2>&1
  docker network rm one-nw >/dev/null 2>&1
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${VOLUME_DIR}/clt_deploy_one_db_data/_data >/dev/null 2>&1

  #reset encode password
  # shellcheck disable=SC2155
  local encode_mysql_password="$(_aes_encrypt "$(_get_work_key)" "$(_get_work_iv)" "${mysql_password}")"
  sed -i "s|^MYSQL_PASSWORD=.*$|MYSQL_PASSWORD=ENC(${encode_mysql_password})|" "${TEMPLATE_DIR}/.env"
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
  --network "${_container_network}" \
  ${CCLOUD_SQL_INIT_JOB_IMAGE} --password="${_password}" --database="${_database}" --host="${_host}" >/dev/null 2>&1

  cat ${VOLUME_DIR}/${_container_log_volume}/_data/log &&
    docker volume rm ${_container_log_volume} >/dev/null 2>&1
}

_format_app_config() {
  _address=$(grep _address config | awk -F= '{print $2}' | sed -e 's/http:\/\///g' -e 's/https:\/\///g')
  _port=$(grep -m 1 _port config | awk -F= '{print $2}')
  _open_ssl=$(grep _open_ssl config | awk -F= '{print $2}')
  _port_websocket=$(grep _port_websocket config | awk -F= '{print $2}')
  _nginx_allow_cidr=$(grep _nginx_allow_cidr config | awk -F= '{print $2}')
  if [ ! "${_nginx_allow_cidr}" ]; then
    _nginx_allow_cidr=all
  fi
  if [ -z "$_address" ]; then
    _address=$(curl -s --connect-timeout 10 -m 20 curl http://members.3322.org/dyndns/getip)
    if [ $? -ne 0 ]; then
      _error "please set your [ip/address] in configuration file:${CURR_PATH}/config"
    fi
  fi

  if [ "$_open_ssl" = 'true' ]; then
    sed -e "s|listen 9999;|listen ${_port_websocket};|g" \
    -e "s|allow NGINX_ALLOW; deny all;|allow ${_nginx_allow_cidr}; deny all;|g" \
    -e "s|AAAA|${_address}|g" "${TEMPLATE_DIR}/ssl_myconf.conf.template" >"${OUTPUT_DIR}/nginx/myconf.conf"
    sed -e "s|server-url: AAAA|server_url: https://${_address}|g" -e "s|corPort: 8888|corPort: 443|g" "${TEMPLATE_DIR}/application.yml.template" >"${OUTPUT_DIR}/app/application.yml"
    _make_certificate_dir "${_address}"
  else
    sed -e "s|listen 8888;|listen ${_port};|g" -e "s|server_name AAAA;|server_name ${_address};|g" "${TEMPLATE_DIR}/myconf.conf.template" >"${OUTPUT_DIR}/nginx/myconf.conf"
    sed -e "s|server-url: AAAA|server_url: http://${_address}|g" -e "s|corPort: 8888|corPort: ${_port}|g" "${TEMPLATE_DIR}/application.yml.template" >"${OUTPUT_DIR}/app/application.yml"
  fi
  chown ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/app/application.yml"
  chmod 600 "${OUTPUT_DIR}/nginx/myconf.conf"
  chown ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/nginx/myconf.conf"
}

#注意！如果第一次部署失败，这个地方不会复原，需要手动改app配置模板的数据库密码

_check_secret() {
  if [ -e "${SECRET_FILE_MD5}" ]; then
    local check_md5=1
  fi
  if [ -z "${IDENTITY_FILE}" ]; then
    IDENTITY_FILE="${SECRET_FILE}"
  fi

  if [ ! -e "${IDENTITY_FILE}" ]; then
    if [ ! -e "${SECRET_ROOT}" ]; then
      mkdir -p ${SECRET_ROOT}
      chown ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${SECRET_ROOT} >/dev/null 2>&1
      chmod 600 ${SECRET_ROOT} >/dev/null 2>&1
    fi
    _error "未找到密钥文件[%s]! 请将密钥文件放在目录[%s]下，或者通过命令行参数 -i[--identity-file]指定密钥路径。" "${SECRET_FILE}" "${SECRET_ROOT}"
  fi

  if [ "${check_md5}" ]; then
    # shellcheck disable=SC2155
    local secret_md5=$(md5sum "${IDENTITY_FILE}" | awk '{print $1}')
    # shellcheck disable=SC2155
    local origin_secret_md5=$(cat "${SECRET_FILE_MD5}")
    if [ "${secret_md5}" != "${origin_secret_md5}" ]; then
      _error "密钥文件md5校验失败!"
    fi
  else
    md5sum "${IDENTITY_FILE}" | awk '{print $1}' >"${SECRET_FILE_MD5}"
    chmod 400 "${SECRET_FILE_MD5}" && chown root:root "${SECRET_FILE_MD5}"
  fi
  if [ "${IDENTITY_FILE}" != "${SECRET_FILE}" ]; then
    mv "${IDENTITY_FILE}" "${SECRET_FILE}"
  fi
  chmod 400 "${SECRET_FILE}" && chown root:root "${SECRET_FILE}"
}
_check_certificate() {
  local openSSL=$(grep _open_ssl config | awk -F= '{print $2}')
  if [ "${openSSL}" == "true" ]; then
    if [ ! -e "${TEMPLATE_DIR}/certificate/fullchain.pem" ] || [ ! -e "${TEMPLATE_DIR}/certificate/privkey.pem" ]; then
      _error "未找到证书,请将证书放在[%s]目录,或者通过命令 %s 自签证书后再运行安装脚本!" "${TEMPLATE_DIR}/certificate" "bash ssl_signature.sh"
    fi
  fi
}
_format_compose_file() {
  _one_app_tag=$(grep -m 1 _one_app config | awk -F= '{print $2}')
  _one_nginx_tag=$(grep -m 1 _one_nginx config | awk -F= '{print $2}')
  _one_redis_tag=$(grep -m 1 _one_redis config | awk -F= '{print $2}')
  _one_ws_tag=$(grep -m 1 _one_ws config | awk -F= '{print $2}')
  _one_zk_tag=$(grep -m 1 _one_zk config | awk -F= '{print $2}')
  _one_mysql_tag=$(grep -m 1 _one_mysql config | awk -F= '{print $2}')

  _port=$(grep -m 1 _port config | awk -F= '{print $2}')
  _port_websocket=$(grep _port_websocket config | awk -F= '{print $2}')

  sed -e "s| colorlightwzg/one-mysql:TAG| colorlightwzg/one-mysql:${_one_mysql_tag}| g" \
  -e "s| colorlightwzg/one-app:TAG| colorlightwzg/one-app:${_one_app_tag}| g" \
  -e "s| colorlightwzg/one-nginx:TAG| colorlightwzg/one-nginx:${_one_nginx_tag}| g" \
  -e "s| colorlightwzg/one-ws:TAG| colorlightwzg/one-ws:${_one_ws_tag}| g" \
  -e "s| colorlightwzg/zookeeper:TAG| colorlightwzg/zookeeper:${_one_zk_tag}| g" \
  -e "s| colorlightwzg/one-redis:TAG| colorlightwzg/one-redis:${_one_redis_tag}| g" \
  -e "s| - PORT_80:80| - ${_port}:80| g" \
  -e "s| - PORT_WS:8443| - ${_port_websocket}:8443| g" \
  "${TEMPLATE_DIR}/docker-compose.yml.template" >"${OUTPUT_DIR}/docker-compose.yml"
}

_make_deploy_home() {
  _info "%s" "正在初始化Colorlight cloud platform部署目录:$(realpath "${CURR_PATH}")..."
  mkdir -p "$OUTPUT_DIR" && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "$OUTPUT_DIR"
  cp -r "${TEMPLATE_DIR}/mysql" "${OUTPUT_DIR}" && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/mysql"
  #nginx要属于root
  cp -r "${TEMPLATE_DIR}/nginx" "${OUTPUT_DIR}" &&
    chmod 600 "${OUTPUT_DIR}/nginx" &&
    chmod 600 "${OUTPUT_DIR}/nginx/nginx.conf" &&
    chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/nginx"
  chmod 400 "${OUTPUT_DIR}/nginx/ssl/dhparam.pem"
  cp -r "${TEMPLATE_DIR}/redis" "${OUTPUT_DIR}" && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/redis"
  cp -r "${TEMPLATE_DIR}/ws" "${OUTPUT_DIR}" && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/ws"
  mkdir -p "${OUTPUT_DIR}/app" && chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/app"
  cp -r "${TEMPLATE_DIR}/.env" "${OUTPUT_DIR}"
}
_docker_nginx_exec() {
  docker exec -i one-nginx "$@"
}
_is_first_deploy() {
  docker volume ls | grep "$MYSQL_DATA_DOCKER_VOLUME" >/dev/null 2>&1
  if [ $? -ne 0 ] || [ ! -d "${VOLUME_DIR}/${MYSQL_DATA_DOCKER_VOLUME}/_data/mysql" ]; then
    echo "true"
  fi
}

before_start_services() {
  _check_and_install_docker_env
  _check_and_create_app_users
  _check_secret
  _check_certificate

  if [ "$(_is_first_deploy)" ]; then
    _init_mysql_data "colorlightwzg/one-mysql:$(grep -m 1 _one_mysql config | awk -F= '{print $2}')" "${MYSQL_DATA_DOCKER_VOLUME}"
  fi

  #print from template
  _make_deploy_home
  _format_app_config
  _format_compose_file
}

start_services() {
  _info "%s" "服务启动中..."
  base64 -d ${SECRET_FILE} >"${OUTPUT_DIR}/.secret" && chmod 400 "${OUTPUT_DIR}/.secret" && chown root:root "${OUTPUT_DIR}/.secret"
  cd "${OUTPUT_DIR}" && docker-compose down && docker-compose up -d
}

after_start_services() {
  _info "%s" "正在检查初始数据..."
  sleep 5

  clt_one_nw=$(docker network ls -q -f NAME=clt_deploy_one-nw)
  sed -e 's/br-clt_one_nw/br-'${clt_one_nw}'/g' ${TEMPLATE_DIR}/nftables.conf > /etc/sysconfig/nftables.conf
  nft -f /etc/sysconfig/nftables.conf

  local enc_mysql_password=$(_get_env "${OUTPUT_DIR}/.env" "MYSQL_PASSWORD") \
  && enc_mysql_password=${enc_mysql_password#*ENC(} && enc_mysql_password=${enc_mysql_password%*)}
  local mysql_password=$(_aes_decrypt "$(_get_work_key)" "$(_get_work_iv)" "$enc_mysql_password")

  _run_ccloud_sql_init_job "one-mysql" "spring" "${mysql_password}"

  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${SECRET_ROOT} && \
  chmod 400 -R ${SECRET_ROOT} >/dev/null 2>&1
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} "${OUTPUT_DIR}/nginx" && \
  chmod 600 -R "${OUTPUT_DIR}/nginx/logrotate" && \
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${VOLUME_DIR}/clt_deploy_nginx_log_data/_data && \
  chmod 777 -R ${VOLUME_DIR}/clt_deploy_spring_uploads_data/_data && \
  chown -R ${COLORLIGHT_USER_UID}:${COLORLIGHT_GROUP_GID} ${VOLUME_DIR}/clt_deploy_spring_uploads_data/_data

  docker restart one-nginx >/dev/null 2>&1

  rm "${OUTPUT_DIR}/docker-compose.yml"
  rm "${OUTPUT_DIR}/.secret"
}
MAIN() {
  before_start_services && \
  start_services && \
  after_start_services && \
  _info "%s" "Deploy Colorlight Cloud platform successfully!"
}

ARGS=$(getopt -o i:r --long identity-file:,renew -- "$@")
eval set -- "${ARGS}"
while :; do
  case $1 in
  -i | --identity-file)
    IDENTITY_FILE=$2
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
    ;;
  esac
  shift
done

target_dir=$1
if [ "$target_dir" ]; then
  if [ -d "$target_dir" ]; then
    OUTPUT_DIR="$(realpath "${target_dir}")/clt_deploy"
    _info "%s" "用户指定部署目录 ：${OUTPUT_DIR}"
  else
    _error "%s" "Usage : $0 [部署目录的位置]"
  fi
fi
MAIN "$@"
