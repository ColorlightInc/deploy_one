#! /bin/bash

#sql location
#sql文件的位置
sql_locations=.
if [ -n "$*" ]
then
    sql_locations=$*
fi

#read database message
#读取数据库信息
read -r -p "ENTER database name:" database
read -r -p "ENTER username:" username
read -r -s -p "ENTER password:" password
echo

#check user password
#校验数据库用户密码
docker exec -i one-mysql bash -c "mysql -u ${username} -p${password} <<< exit" > /dev/null 2>&1
if [ $? -ne "0" ]; then
    printf "\nERROR 1045 (28000): Access denied for user '%s'@'localhost' (using password: YES)\n" "${username}"
    printf "Please check your password!"
    exit 1
fi

#check database name
#校验数据库名
docker exec -i one-mysql bash -c "mysql -u ${username} -p${password} <<< use '${database}'"  > /dev/null 2>&1
if [ $? -ne "0" ]; then
    printf "\nERROR 1049 (42000): Unknown database '%s'\n" "${database}"
    printf "Please check your database name!\n"
    exit 1
fi

#parse sql files into temp file
#将目标位置的sql文件转储到temp临时文件
#临时文件
temp=temp
if [ -e ${temp} ]; then
  echo > ${temp}
else
  touch ${temp}
fi
chmod +r temp

echo "use ${database};" >> ${temp}
echo "SET NAMES utf8mb4;" >> ${temp}
echo "SET FOREIGN_KEY_CHECKS = 0;" >> ${temp}

function _read_sql_file() {
    for file in $*
    do
      if [ -f "${file}" -a "${file##*.}" = "sql" ]; then
        printf "\033[31mscanning sql:%s\33[0m\n" "${file}"
        sed -e 's/\r//g' -e "/DROP TABLE IF EXISTS \`/d" -e "/SET FOREIGN_KEY_CHECKS =/d" -e "/SET NAMES /d" -e "/-- /d" -e "/use \`/d" \
        -e "s|CREATE TABLE \`|CREATE TABLE IF NOT EXISTS \`|g" -e "/\/\*/,/\*\//d" -e "/^$/d" ${file} >> ${temp}
      fi

    done
}

for _sql in ${sql_locations}
do
  if [ -d "${_sql}" ]; then
    sql_list=`ls "${_sql}" | grep .sql$`
    if [ -z "${sql_list}" ]; then
        echo "Warning:no sql file found in '${_sql}'!"
        continue
    else
      for var in $sql_list
      do
        sql_file=${_sql}/${var}
        _read_sql_file "${sql_file}"
      done
    fi
  elif [ -f "${_sql}" ]; then
    _read_sql_file "${_sql}"
  else
    echo "Warning:'${_sql}' is not a sql file!"
    continue
  fi
done

echo "SET FOREIGN_KEY_CHECKS = 1;" >> ${temp}


#print tables
#打印新建表名
for table_name in `cat ${temp} | grep 'CREATE TABLE' | awk '{print $6}'`
do
  docker exec -i one-mysql bash -c "mysql -u root -pcolorlight spring <<< 'select * from ${table_name} limit 1'" >> /dev/null 2>&1
  if [ $? -ne 0 ]; then
    printf "\033[32mnew table:%s\33[0m\n" "${table_name}"
  else
    printf "\033[33mexisting table:%s\33[0m\n" "${table_name}"
  fi
done

#add tables
#加表
docker exec -i one-mysql bash -c "mysql -u root -pcolorlight spring" < ${temp} > /dev/null 2>&1
if [ $? -eq "0" ]; then
    echo "success:add tables"
else
    echo "error:add tables"
fi

rm ${temp}
