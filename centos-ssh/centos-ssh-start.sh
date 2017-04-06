#!/bin/bash
set -e

echo $SSH_ROOT_PASSWORD

# 添加用户root，密码root，并且将此用户添加到sudoers里  
echo "root:${SSH_ROOT_PASSWORD}" | chpasswd  
echo "root   ALL=(ALL)       ALL" >> /etc/sudoers

# ./usr/sbin/sshd "-D"
systemctl start sshd.service

exec "$@"

