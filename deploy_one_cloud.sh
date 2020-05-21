if [ $# -ne "2" ]
then
    echo "Usage: $(basename $0) ip  port"
    exit 1
fi

deploy_path=`pwd`
ip=$1
port=$2


one_app_image="colorlightwzg/one-app:v4.15"


tar xzf $deploy_path/deploy.tar.gz -C $deploy_path

# 1)Install docker for Linux machines. For example: Ubuntu please refer to website:https://docs.docker.com/install/linux/docker-ce/ubuntu/


docker pull colorlightwzg/one-nginx:v1.3 
docker pull colorlightwzg/mysql:v1.1   
docker pull $one_app_image
docker pull zookeeper:latest


docker network create one-nw --subnet 192.168.99.0/24
docker volume create spring_uploads_data
docker volume create spring_log
docker volume create nginx_log_data

docker run --restart=always -d  --network one-nw --name one-zk --privileged zookeeper:latest >/dev/null 2>&1


docker run --restart=always -d \
--log-opt max-size=100M \
-e MYSQL_ROOT_PASSWORD=colorlight \
-v $deploy_path/mysql/data:/var/lib/mysql \
-v $deploy_path/mysql/conf:/etc/mysql/conf.d  \
--name one-mysql \
--network one-nw \
colorlightwzg/mysql:v1.1 >/dev/null 2>&1


echo "Waiting for mysql fully started."


sleep 40

cp $deploy_path/db_spring/spring.sql $deploy_path/mysql/data


sed -i "s/8888/$port/" $deploy_path/nginx/myconf.conf
sed -i "s/8888/$port/" $deploy_path/app/application.yml

sed -i "s/192\.168\.102\.102/$ip/" $deploy_path/nginx/myconf.conf
sed -i "s/192\.168\.102\.102/$ip/" $deploy_path/app/application.yml


docker run --restart=always -d \
--log-opt max-size=100M \
-v spring_uploads_data:/usr/share/nginx/html/backup/wp-content/uploads \
-v spring_log:/logs \
-v $deploy_path/app:/var/lib/app \
-e "SPRING_PROFILES_ACTIVE=alpha" \
--network one-nw \
--name one-app \
$one_app_image > /dev/null 2>&1



docker run --restart=always -d \
--log-opt max-size=100M \
-p 443:443 \
-p $port:$port \
--name one-nginx \
-v $deploy_path/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v $deploy_path/nginx/myconf.conf:/etc/nginx/conf.d/default.conf \
-v $deploy_path/nginx/letsencrypt:/etc/letsencrypt \
-v $deploy_path/nginx/letsencrypt-backups:/var/lib/letsencrypt \
-v $deploy_path/nginx/ccloud3-compile:/var/www/html \
-v spring_uploads_data:/usr/share/nginx/html/backup/wp-content/uploads/ \
-v nginx_log_data:/var/log/nginx/ \
--network one-nw \
colorlightwzg/one-nginx:v1.3 \
nginx -g 'daemon off;' >/dev/null 2>&1


sleep 5

echo "Initialize the database ... It could take around 5 mins to init the database.."
sleep 30
docker restart one-mysql
sleep 30
#docker exec -i one-mysql mysql -u root -pcolorlight <<< "source /var/lib/mysql/spring.sql"
docker exec -i one-mysql bash -c "mysql -u root -pcolorlight <<< 'source /var/lib/mysql/spring.sql'"
cp $deploy_path/db_spring/update_lining_gps_tag.sql $deploy_path/mysql/data
docker exec -i one-mysql bash -c "mysql -u root -pcolorlight <<< 'source /var/lib/mysql/update_lining_gps_tag.sql'"
sleep 1
echo "deploy_path=$deploy_path, deploy ip=$ip, port=$port"
echo "success: install completed."
#PASSWORD: colorlight
#mysql> source /var/lib/mysql/spring.sql
#mysql> exit

