#!/bin/bash
set -e

#cp /defaultConf/nginx.conf /etc/nginx/nginx.conf

if [ ! -f "/etc/nginx/conf.d/default.conf" ]; then  
   cp /defaultConf/default.conf /etc/nginx/conf.d/default.conf
fi  

# sudo systemctl start nginx.service

exec "$@"
