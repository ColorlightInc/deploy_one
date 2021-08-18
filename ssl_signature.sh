#!/bin/bash

# Locate shell script path
SCRIPT_DIR=$(dirname $0)
if [ ${SCRIPT_DIR} != '.' ]
then
  cd ${SCRIPT_DIR}
fi

CERTIFICATE_DIR=./template/certificate
ADDRESS="$(cat config | grep _address | awk -F= '{print $2}' | sed -e 's/http:\/\///g' -e 's/https:\/\///g')"

cd $CERTIFICATE_DIR

PASS=$(openssl rand -base64 20)

echo "Generate privkeypem..."

openssl genrsa -des3 -passout pass:$PASS -out privkey.pem 2048

mv privkey.pem privkey.origin.pem

openssl rsa -passin pass:$PASS -in privkey.origin.pem -out privkey.pem

echo "Generate servercsr..."

SUBJECT="/C=CN/ST=Shenzhen/L=Shenzhen/CN="$ADDRESS""

openssl req -new -subj $SUBJECT -key privkey.pem -out server.csr

echo "Generate fullchainpem..."

openssl x509 -req -days 365 -in server.csr -signkey privkey.pem -out fullchain.pem

rm -f privkey.origin.pem server.csr