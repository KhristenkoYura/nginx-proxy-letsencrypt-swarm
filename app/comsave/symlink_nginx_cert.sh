#!/bin/bash

if [ -n "$1" ]; then
  echo "VIRTUAL_HOST argument is not set"

  exit 1
fi

VIRTUAL_HOST=$1

ln -s /etc/letsencrypt/live/$VIRTUAL_HOST/fullchain.pem /etc/nginx/certs/$VIRTUAL_HOST.crt
ln -s /etc/letsencrypt/live/$VIRTUAL_HOST/privkey.pem /etc/nginx/certs/$VIRTUAL_HOST.key
ln -s /etc/letsencrypt/live/$VIRTUAL_HOST/fullchain.pem /etc/nginx/certs/$VIRTUAL_HOST.chain.pem
ln -s /etc/letsencrypt/ssl-dhparams.pem /etc/nginx/certs/$VIRTUAL_HOST.dhparam.pem
