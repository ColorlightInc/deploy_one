deploy_path=`pwd`
cp $deploy_path/db_spring/update_lining_gps_tag.sql $deploy_path/mysql/data
sleep 1
docker exec -i one-mysql bash -c "mysql -u root -pkS4pKJF_3kfdsfOoJ <<< 'source /var/lib/mysql/update_lining_gps_tag.sql'"