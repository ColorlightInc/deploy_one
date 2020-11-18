#! /bin/bash

git_repo=https://github.com/wzg0131/deploy_one.git
git_repo_branch=v2

while getopts "v:fh" arg
do
  case $arg in
    v)
      echo "版本号:${OPTARG}"
      ;;
    f)
      echo "强制覆盖"
      ;;
    h)
      printf "帮助文档"
      ;;
    ?)
      echo "unknown"
      exit 1
      ;;
  esac
done

mkdir git_temp
cd "${git_temp}" || exit
git clone ${git_repo}
cd `ls` || exit
git checkout ${git_repo_branch}