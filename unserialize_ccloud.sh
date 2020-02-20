
deploy_path=`pwd`

docker run --restart=always -d --log-opt max-size=100M \
-v $deploy_path/unserialize/php.ini:/usr/local/etc/php/php.ini \
-v $deploy_path/unserialize/www.conf:/usr/local/etc/php-fpm.d/www.conf  \
--network one-nw --name php  hanxiaoxin/ccloud_fastcgi:v2

sleep 1

echo "start to unserializing old data...wait..."

docker exec -i php php < $deploy_path/unserialize/commentmeta.php
sleep 1
docker exec -i php php < $deploy_path/unserialize/option.php
sleep 1
docker exec -i php php < $deploy_path/unserialize/postmeta.php
sleep 1
docker exec -i php php < $deploy_path/unserialize/termmeta.php
sleep 1l
docker exec -i php php < $deploy_path/unserialize/usermeta.php
sleep 1

docker stop php

cp $deploy_path/db_spring/fetch_unserialize_ccloud.sql $deploy_path/mysql/data

sleep 1

docker exec -i one-mysql bash -c "mysql -u root -pkS4pKJF_3kfdsfOoJ <<< 'source /var/lib/mysql/fetch_unserialize_ccloud.sql'"

echo "unserialize old data completed..."
