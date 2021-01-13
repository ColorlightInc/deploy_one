#!/bin/bash


#uninstall outdated docker
sudo apt-get remove docker docker-engine docker.io containerd runc

#docker-ce install
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
    echo "install docker-compose fail from https://github.com/docker/compose/releases/download/1.26.0/run.sh, check your network."
    exit 1
fi
exit 0