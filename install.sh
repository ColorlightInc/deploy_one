#!/bin/sh

#users
COLORLIGHT_USER=colorlight
COLORLIGHT_USER_UID=3991
COLORLIGHT_GROUP=colorlight
COLORLIGHT_GROUP_GID=3991
MYSQL_USER=mysql
NGINX_USER=www-data

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
makeCertificateDir()
{
    local _nginx_server_address=$1
    _certificate_dir="${OUTPUT_DIR}/nginx/letsencrypt/live/${_nginx_server_address}"
    mkdir -p ${_certificate_dir}
    cat ${TEMPLATE_DIR}/certificate/fullchain.pem > ${_certificate_dir}/fullchain.pem && chmod 750 ${_certificate_dir}/fullchain.pem
    cat ${TEMPLATE_DIR}/certificate/privkey.pem > ${_certificate_dir}/privkey.pem && chmod 750 ${_certificate_dir}/privkey.pem
}
checkUsers()
{
    egrep "$COLORLIGHT_GROUP" /etc/group >& /dev/null
    if [ $? -ne 0 ]
    then
        groupadd $COLORLIGHT_GROUP -g $COLORLIGHT_GROUP_GID
    fi

    egrep "$COLORLIGHT_USER" /etc/passwd >& /dev/null
    if [ $? -ne 0 ]
    then
        useradd $COLORLIGHT_USER -g $COLORLIGHT_GROUP -u $COLORLIGHT_USER_UID -m -s /sbin/nologin
    fi

    egrep "$MYSQL_USER" /etc/passwd >& /dev/null
    if [ $? -ne 0 ]
    then
        useradd $MYSQL_USER -g $COLORLIGHT_GROUP -m -s /sbin/nologin
    fi

    egrep "NGINX_USER" /etc/passwd >& /dev/null
    if [ $? -ne 0 ]
    then
        useradd NGINX_USER -g $COLORLIGHT_GROUP -m -s /sbin/nologin
    fi
}
check_and_install_docker()
{
    docker -v
    if [ $? -eq 0 ];then
        docker_status=`service docker status | grep Active | awk '{print $2}'`
        if [ $docker_status != "active" ]; then
            systemctl start docker
            echo "restart docker service"
        fi
        echo "docker service already exists."
    else
        curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
        if [ $? -eq 0 ];then
            echo "docker-ce install success."
        else
            echo "install docker fail from https://get.docker.com, check your network."
            exit 1
        fi
    fi
}
check_and_install_docker_compose()
{
    docker-compose -v > /dev/null 2>&1
    if [ $? -ne 0 ];then
      #docker_compose install
      sudo curl -L --fail https://github.com/docker/compose/releases/download/1.27.4/run.sh -o /usr/local/bin/docker-compose  > /dev/null 2>&1
      sudo chmod +x /usr/local/bin/docker-compose
    fi


    docker-compose -v > /dev/null 2>&1
    if [ $? -eq 0 ];then
        echo "docker-compose install success."
    else
        echo "install docker-compose fail from https://github.com/docker/compose/releases/download/1.27.4/run.sh, check your network."
        exit 1
    fi
}
# $1 image $2 data dir
init_mysql_data()
{
    local _mysql_docker_image=$1
    local _mysql_data_volume=$2
    echo "正在初始化数据库数据...请稍等几分钟(请不要操作以免导致数据库初始化失败)"

    docker network create one-nw > /dev/null 2>&1
    docker volume create ${_mysql_data_volume} > /dev/null 2>&1

    docker run --restart=always -d \
    -e MYSQL_ROOT_PASSWORD=colorlight \
    -e MYSQL_DATABASE=spring \
    -v ${_mysql_data_volume}:/var/lib/mysql \
    --name init-data \
    --network one-nw \
    ${_mysql_docker_image} > /dev/null 2>&1
}
after_init_mysql_data()
{
    docker network rm one-nw > /dev/null 2>&1
    docker rm -f init-data > /dev/null 2>&1
}
read_configuration()
{
    _address=`cat config | grep _address | awk -F= '{print $2}' | sed -e 's/http:\/\///g' -e 's/https:\/\///g'`
    _port=`cat config | grep -m 1 _port | awk -F= '{print $2}'`
    _open_ssl=`cat config | grep _open_ssl | awk -F= '{print $2}'`
    _port_websocket=`cat config | grep _port_websocket | awk -F= '{print $2}'`


    if [ -z $_address ]; then
        _address=`curl -s --connect-timeout 10 -m 20 curl http://members.3322.org/dyndns/getip`
        if [ $? -ne 0 ]; then
            echo "please set your [ip/address] in configuration file:${CURR_PATH}/config"
            exit 1
        fi
    fi

    if [ $_open_ssl = 'true' ];then
        sed -e "s|listen 9999;|listen ${_port_websocket};|g" -e "s|AAAA|${_address}|g" ${TEMPLATE_DIR}/ssl_myconf.conf.template > ${OUTPUT_DIR}/nginx/myconf.conf
        sed -e "s|server-url: AAAA|server_url: https://${_address}|g" -e "s|corPort: 8888|corPort: 443|g" ${TEMPLATE_DIR}/application.yml.template > ${OUTPUT_DIR}/app/application.yml
        makeCertificateDir ${_address}
    else
        sed -e "s|listen 8888;|listen ${_port};|g" -e "s|server_name AAAA;|server_name ${_address};|g" ${TEMPLATE_DIR}/myconf.conf.template > ${OUTPUT_DIR}/nginx/myconf.conf
        sed -e "s|server-url: AAAA|server_url: http://${_address}|g" -e "s|corPort: 8888|corPort: ${_port}|g" ${TEMPLATE_DIR}/application.yml.template > ${OUTPUT_DIR}/app/application.yml
    fi
    chmod 640 ${OUTPUT_DIR}/nginx/myconf.conf
}

update_images_version()
{
    _one_app_tag=`cat config | grep -m 1 _one_app | awk -F= '{print $2}'`
    _one_nginx_tag=`cat config | grep -m 1 _one_nginx | awk -F= '{print $2}'`
    _one_redis_tag=`cat config | grep -m 1 _one_redis | awk -F= '{print $2}'`
    _one_ws_tag=`cat config | grep -m 1 _one_ws | awk -F= '{print $2}'`
    _one_mysql_tag=`cat config | grep -m 1 _one_mysql | awk -F= '{print $2}'`

    _port=`cat config | grep -m 1 _port | awk -F= '{print $2}'`
    _port_websocket=`cat config | grep _port_websocket | awk -F= '{print $2}'`

    sed -e "s| colorlightwzg/one-mysql:TAG| colorlightwzg/one-mysql:${_one_mysql_tag}| g" \
        -e "s| colorlightwzg/one-app:TAG| colorlightwzg/one-app:${_one_app_tag}| g" \
        -e "s| colorlightwzg/one-nginx:TAG| colorlightwzg/one-nginx:${_one_nginx_tag}| g" \
        -e "s| colorlightwzg/one-ws:TAG| colorlightwzg/one-ws:${_one_ws_tag}| g" \
        -e "s| colorlightwzg/one-redis:TAG| colorlightwzg/one-redis:${_one_redis_tag}| g" \
        -e "s| - PORT_80:80| - ${_port}:80| g" \
        -e "s| - PORT_WS:8443| - ${_port_websocket}:8443| g" \
        ${TEMPLATE_DIR}/docker-compose.yml.template > ${OUTPUT_DIR}/docker-compose.yml
}

makeDir() {
  mkdir -p $OUTPUT_DIR && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} $OUTPUT_DIR
  echo "正在初始化colorlight cloud部署目录:$(realpath $CURR_PATH)..."
  cp -r ${TEMPLATE_DIR}/mysql ${OUTPUT_DIR} && chown -R ${MYSQL_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/mysql
  #nginx要属于root
  cp -r ${TEMPLATE_DIR}/nginx ${OUTPUT_DIR} && chmod 750 ${OUTPUT_DIR}/nginx && chmod 640 ${OUTPUT_DIR}/nginx/nginx.conf
  cp -r ${TEMPLATE_DIR}/redis ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/redis
  cp -r ${TEMPLATE_DIR}/ws ${OUTPUT_DIR} && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/ws
  mkdir -p ${OUTPUT_DIR}/app && chown -R ${COLORLIGHT_USER}:${COLORLIGHT_GROUP} ${OUTPUT_DIR}/app
}
after_start_services()
{
  #华为红线nginx扫描 3.4
   docker exec -it one-nginx bash -c "sed -i 's/daily/weekly/' /etc/logrotate.d/nginx"
   docker exec -it one-nginx bash -c "sed -i 's/rotate 52/rotate 13/' /etc/logrotate.d/nginx"

}
check_and_install_docker && check_and_install_docker_compose

checkUsers
#read and set configuration
makeDir && read_configuration
#read and reset docker images version
update_images_version
#init data
MYSQL_DATABASE_DATA_VOLUME="${OUTPUT_DIR##*/}_one_db_data"
docker volume ls | grep $MYSQL_DATABASE_DATA_VOLUME > /dev/null 2>&1
if [ $? -ne 0 -o ! -d "/var/lib/docker/volumes/${MYSQL_DATABASE_DATA_VOLUME}/_data/mysql" ]; then
    _need_to_init="true"
fi

if [ -n "$_need_to_init" ]; then
    init_mysql_data "colorlightwzg/one-mysql:${_one_mysql_tag}" "$MYSQL_DATABASE_DATA_VOLUME"
    sleep 150
    #todo 可以加个探测
    after_init_mysql_data
fi
#restart docker-compose
cd ${OUTPUT_DIR} && docker-compose down && docker-compose up -d
after_start_services
echo "SUCCESS:colorlight cloud部署完成"
