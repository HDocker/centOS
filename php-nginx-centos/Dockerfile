FROM jj/centos
MAINTAINER Justin<justin@5nas.cc>



ENV WEB_DOCUMENT_ROOT  /web-root
ENV WEB_DOCUMENT_INDEX index.php
ENV WEB_ALIAS_DOMAIN   *.vm
ENV WEB_PHP_SOCKET  127.0.0.1:9000

COPY conf/ /opt/docker/

# Install tools
RUN yum -y install nginx \
    && /opt/docker/bin/provision run --tag bootstrap --role webdevops-nginx --role webdevops-php-nginx \
    && /opt/docker/bin/bootstrap.sh \
    && /usr/local/bin/docker-image-cleanup

RUN mkdir /app
VOLUME /app

EXPOSE 80 443
