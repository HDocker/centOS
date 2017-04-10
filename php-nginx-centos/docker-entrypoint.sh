#!/bin/bash

set -e
   systemctl start php-fpm

   cp nginx-default.conf /etc/nginx/conf.d/default.conf
   systemctl restart nginx.service  
exec "$@"
