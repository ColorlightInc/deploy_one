#!/bin/sh

OUTPUT_DIR=clt_deploy
echo "正在关闭服务..."
cd ${OUTPUT_DIR} && docker-compose down && rm -rf ${OUTPUT_DIR}
echo "正在删除clt_deploy部署目录..."
echo "SUCCESS:colorlight cloud卸载完成"
