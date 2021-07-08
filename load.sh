#! /bin/bash

#更新配置文件的版本号
_editConfig() {
  if [ -z "$1" -o -z "$2" ]; then
      exit 0
  fi
  image=$1
  version=$2
  key="$(echo _${image##*/} | sed 's/-/_/g')"

  if [ "$(cat $(realpath config) | grep $key)" ]; then
     sed -i "s/^${key}.*$/${key}=${version}/" config
  fi
}

_loadDockerImage() {
  tar_file=$1
  echo "[INFO]: Starting load image from file[$tar_file]"

  image_tag=$(docker load < "$tar_file" | grep 'Loaded image' | awk '{print $3}') > /dev/null 2>&1
  if [ "$image_tag" ]; then
    echo "[INFO]: Loaded image: $image_tag"
    _editConfig ${image_tag%%:*} ${image_tag##*:}
  else
    echo "[WARN]: $tar_file is not a Docker Image Package."
  fi

}

_scanPackagesFolder() {
  _tar_folder_path=$(realpath "$1")

  echo "[INFO]: Scan folder[$_tar_folder_path]"
  if [ ! -d "$_tar_folder_path" ]; then
      echo "[ERROR]: $(realpath "$_tar_folder_path") is not a folder."
      exit 1
  fi

#  tars=$(ls ${_tar_folder_path} | grep '.tar$')

  for tar in $(ls ${_tar_folder_path} | grep '.tar$')
  do
    _loadDockerImage "${_tar_folder_path}/${tar}"
  done
}

main() {
  _tar_folder=pkg
  if [ -n "$1" ]; then
      _tar_folder=$1
  fi
  _scanPackagesFolder $_tar_folder
  echo "[INFO]: Docker images loaded successfully!"
}

main "$@"