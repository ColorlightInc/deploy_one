#!/bin/sh

OUTPUT_DIR=$(pwd)/clt_deploy
echo "正在关闭服务..."
if [ -d "$OUTPUT_DIR" ]; then
    cd ${OUTPUT_DIR} && docker-compose down
    echo "正在删除${OUTPUT_DIR}部署目录..."
    rm -rf ${OUTPUT_DIR}
fi

echo "SUCCESS:colorlight cloud卸载完成"
