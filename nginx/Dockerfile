FROM centos:7.3.1611
MAINTAINER Justin<justin@5nas.cc>


#使用yum安装nginx需要包括Nginx的库，安装Nginx的库
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

RUN yum --setopt=tsflags=nodocs -y install  nginx \
    && yum clean all

#RUN systemctl enable nginx.service

VOLUME /etc/nginx/conf.d/ /html
 

COPY conf defaultConf
COPY conf/default.conf /etc/nginx/conf.d/default.conf


COPY docker-entrypoint.sh /nginx-entrypoint.sh
RUN chmod -v +x /nginx-entrypoint.sh
ENTRYPOINT ["/nginx-entrypoint.sh"]

EXPOSE 80  443

CMD ["nginx", "-g", "daemon off;"]

