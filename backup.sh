#! /bin/bash

_checkMysqlUser() {
    #读取数据库信息
    read -r -p "请输入要备份的数据库名:" database
    read -r -p "请输入Mysql用户名:" username
    read -r -s -p "请输入Mysql密码:" password
    echo

    #check user password
    #校验数据库用户密码
    docker exec -i one-mysql bash -c "mysql -u ${username} -p${password} <<< exit" > /dev/null 2>&1
    if [ $? -ne "0" ]; then
        printf "\nERROR 1045 (28000): Access denied for user '%s'@'localhost' (using password: YES)\n" "${username}"
        printf "ERROR:密码错误\n"
        exit 1
    fi

    #check database name
    #校验数据库名
    docker exec -i one-mysql bash -c "mysql -u ${username} -p${password} <<< use '${database}'"  > /dev/null 2>&1
    if [ $? -ne "0" ]; then
        printf "\nERROR 1049 (42000): Unknown database '%s'\n" "${database}"
        printf "ERROR:找不到该数据库\n"
        exit 1
    fi
}
_buckup_mysql_data() {
    local bk_dir=$1
    docker exec -i one-mysql mysqldump -u ${username} -p${password} ${database} > "${bk_dir}/${database}_dump_$(date +"%Y%m%d").sql"
}

_buckup_upload_data() {
    local bk_dir=$1
    docker cp one-nginx:/usr/share/nginx/html/backup/wp-content/uploads "${bk_dir}/clt_uploads_dump_$(date +"%Y%m%d")"
}
main() {
    _checkMysqlUser

    bk_temp_dir=$(mktemp -d "clt_backup_$(date +"%Y_%m_%d_%H_%M").XXX")
    output_dir=$(pwd)
    if [ -d "$1" ]; then
        output_dir=$1
    fi
    backup_tar="${output_dir}/${bk_temp_dir##*/}.tar.gz"

    echo "正在备份数据库数据..."
    _buckup_mysql_data $bk_temp_dir
    echo "正在备份上传数据..."
    _buckup_upload_data $bk_temp_dir

    tar -czvf ${backup_tar} ${bk_temp_dir}/*
    rm -rf ${bk_temp_dir}

    echo "SUCCESS:clt_deploy项目数据备份完成:\n${backup_tar}"
}

main $@