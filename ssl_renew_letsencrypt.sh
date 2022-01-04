#!/bin/bash
#自动更新证书脚本

ImageLetsencrypt="quay.io/letsencrypt/letsencrypt"
ContainerName="one-nginx"
CertifatePath=`docker inspect ${ContainerName} | egrep \"Source.+letsencrypt\" | awk -F\" '{print $4}' ` 
#配置域名
Domain=".com"
#证书
Certifate="${CertifatePath}/live/${Domain}/fullchain.pem"
#配置邮箱
Email="@.com"


#查询证书有效期限
CheckExpiry()
{
	if [ -f "$Certifate" ];then
		EndDate=`openssl x509 -in ${Certifate} -noout -enddate | awk -F= '{print $2}'`
		EndTime=`date -d "$EndDate" +%s`
		CurrentTime=`date -d "$(date -u '+%b %d %T %Y GMT')" +%s`
		LeftTime=`expr $EndTime - $CurrentTime`
		LeftDays=`expr $LeftTime / 86400`
		if [ $LeftDays -lt 30 ];then
			echo "Your certificate close to expiry,left $LeftDays days,please renew the cert."
		else
			echo "Your certificate isn't close to expiry,left $LeftDays days,not renewals are required."
			exit 1
		fi
	else
		echo "No certificate."
	fi	
}
CheckImageLetsencrypt()
{
	docker images ${ImageLetsencrypt} | grep ${ImageLetsencrypt} > /dev/null
	if [ $? -ne 0 ];then
		docker pull ${ImageLetsencrypt}
		echo "pulling image ${ImageLetsencrypt}."
	fi

	docker images ${ImageLetsencrypt} | grep ${ImageLetsencrypt} > /dev/null
	if [ $? -eq 0 ];then
		echo "image ${ImageLetsencrypt} pull success."
	else 
		echo "pull ${ImageLetsencrypt} fail,check your network."
		exit 1
	fi
}
QuerySerialNumber()
{
	if [ -f "$Certifate" ];then
		SerialNumber=`openssl x509 -in ${Certifate} -noout -serial | awk -F= '{print $2}'`
		return $SerialNumber
	else
		echo "No certificate."
	fi	
}

CheckExpiry && CheckImageLetsencrypt

docker stop $ContainerName

echo "stop $ContainerName."

SerialBeforeRenew=$(QuerySerialNumber)

docker run --rm -p 80:80 -p 443:443 -v ${CertifatePath}:/etc/letsencrypt ${ImageLetsencrypt} auth --standalone -m ${Email} --agree-tos -d ${Domain}

SerialAfterRenew=$(QuerySerialNumber)

if [ $SerialAfterRenew != $SerialBeforeRenew ];then
	echo "renew certificate success."
else 
	echo "renew certificate fail."
fi

docker restart $ContainerName

echo "$ContainerName restart success."

