FROM jj/apache

MAINTAINER Justin.h<justin@5nas.cc> 


RUN yum --setopt=tsflags=nodocs -y update
RUN yum --setopt=tsflags=nodocs -y install php \
    php-gd \
    php-mysql \
    mysql \
    && yum clean all



