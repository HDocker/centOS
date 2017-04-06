#!/bin/bash

set -e

echo $SSH_ROOT_PASSWORD
# 添加用户root，密码root，并且将此用户添加到sudoers里  
#if [ "$SSH_ROOT_PASSWORD"='' ]; then
#  export SSH_ROOT_PASSWORD="root"
#  : "${SSH_ROOT_PASSWORD:=root}"
#fi
echo "root:${SSH_ROOT_PASSWORD}" | chpasswd  
echo "root   ALL=(ALL)       ALL" >> /etc/sudoers

exec "$@"
