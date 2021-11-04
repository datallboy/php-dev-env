#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

mkdir -p certs

OPENSSL_SUBJ="/C=US/ST=/L="
OPENSSL_CA="${OPENSSL_SUBJ}/CN=php-dev-env-CA"
OPENSSL_SERVER="${OPENSSL_SUBJ}/CN=mariadb"
OPENSSL_CLIENT="${OPENSSL_SUBJ}/CN=client"

sh ./scripts/genroot.sh "${OPENSSL_CA}"
sh ./scripts/genserver.sh "${OPENSSL_SERVER}"
sh ./scripts/genclient.sh "${OPENSSL_CLIENT}"

chmod 644 ./certs/client-key.pem ./certs/server-key.pem