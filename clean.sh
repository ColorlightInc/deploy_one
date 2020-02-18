docker rm -f one-nginx
docker rm -f one-app
docker rm -f one-mysql
docker rm -f one-zk

rm -rf app  db_spring  mysql  nginx 
docker network rm one-nw
