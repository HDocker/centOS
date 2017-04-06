#!/bin/bash

set -e

# 添加用户root，密码root，并且将此用户添加到sudoers里  
RUN echo "root:${SSH_ROOT_PASSWORD}" | chpasswd  
RUN echo "root   ALL=(ALL)       ALL" >> /etc/sudoers
