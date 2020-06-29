if [ $# -ne "2" ]
then
    echo "Usage: $(basename $0) database sql_file"
    exit 1
fi

deploy_path=`pwd`
database=$1
sql_file=$2
password=colorlight

if [ ! -e $deploy_path/db_spring/$sql_file ]; then
  echo "error: can not find sql file [$sql_file] in [db_spring] folder"
  exit 1
else
  cp $deploy_path/db_spring/$sql_file $deploy_path/mysql/data
fi

if [ $database = "ccloud" ]; then
    password=kS4pKJF_3kfdsfOoJ
fi

docker exec -i one-mysql bash -c "mysql -u root -p${password} <<< 'source /var/lib/mysql/${sql_file}'"

