#!/bin/sh

OUTPUT_DIR=$(pwd)/clt_deploy

target_dir=$1
if [ "$target_dir" ]; then
    if [ -d "$target_dir" ]; then
        if [ "${target_dir##*/}" = "clt_deploy" ]; then
            OUTPUT_DIR=$(realpath $target_dir)
        else
            OUTPUT_DIR=$(realpath $target_dir)/clt_deploy
        fi
    else
        echo "Usage : $0 [部署目录的位置]"
        exit 1
    fi
fi

if [ ! -d "$OUTPUT_DIR" ]; then
    echo "ERROR:目标部署目录不存在 ：${OUTPUT_DIR}"
    exit 1
fi

echo "正在关闭服务..."
if [ -d "$OUTPUT_DIR" ]; then
    cd ${OUTPUT_DIR} && docker-compose down
    echo "正在删除${OUTPUT_DIR}部署目录..."
    rm -rf ${OUTPUT_DIR}
fi

echo "SUCCESS:colorlight cloud卸载完成"
