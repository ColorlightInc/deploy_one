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
        sed -e "9c\  listen ${_port_websocket};" -e "4c\  server_name ${_address};" -e "11c\  server_name ${_address};" ${CURR_PATH}/template/ssl_myconf.conf.template > ${CURR_PATH}/nginx/myconf.conf
        sed -e "7c\  server_url: https://${_address}" -e "6c\  corPort: 443" ${CURR_PATH}/template/application.yml.template > ${CURR_PATH}/app/application.yml
    else
        sed -e "2c\  listen ${_port};" -e "3c\  server_name ${_address};" ${CURR_PATH}/template/myconf.conf.template > ${CURR_PATH}/nginx/myconf.conf
        sed -e "7c\  server_url: http://${_address}" -e "6c\  corPort: ${_port}" ${CURR_PATH}/template/application.yml.template > ${CURR_PATH}/app/application.yml
    fi
}

#read and set configuration
read_configuration

#restart docker-compose
docker-compose down
docker-compose up -d