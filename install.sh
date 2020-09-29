#!/bin/sh

#install docker and docker-compose
sh docker/install-docker.sh

CURR_PATH=`pwd`

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
        sed -e "s|listen 9999;|listen ${_port_websocket};|g" -e "s|AAAA|${_address}|g" ${CURR_PATH}/template/ssl_myconf.conf.template > ${CURR_PATH}/nginx/myconf.conf
        sed -e "s|server-url: AAAA|server_url: https://${_address}|g" -e "s|corPort: 8888|corPort: 443|g" ${CURR_PATH}/template/application.yml.template > ${CURR_PATH}/app/application.yml
    else
        sed -e "s|listen 8888;|listen ${_port};|g" -e "s|server_name AAAA;|server_name ${_address};|g" ${CURR_PATH}/template/myconf.conf.template > ${CURR_PATH}/nginx/myconf.conf
        sed -e "s|server-url: AAAA|server_url: http://${_address}|g" -e "s|corPort: 8888|corPort: ${_port}|g" ${CURR_PATH}/template/application.yml.template > ${CURR_PATH}/app/application.yml
    fi
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
        -e "s| - PORT_WS:8443| - ${_port}:80| g" \
        ${CURR_PATH}/template/docker-compose.yml.template > ${CURR_PATH}/docker-compose.yml
}

#read and set configuration
read_configuration
#read and reset docker images version
update_images_version
#restart docker-compose
docker-compose up -d
