FROM daocloud.io/zachary/images-dev-minimal:latest
MAINTAINER Zachary Zhao
VOLUME /home /root
RUN wget http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm -P /tmp/
RUN rpm -ivh /tmp/mysql57-community-release-el6-7.noarch.rpm
RUN yum -y install httpd php php-mysql mysql mysql-server
RUN yum -y install php-gd php-xml php-mbstring php-ldap php-pear php-xmlrpc
RUN yum -y install httpd-manual mod_ssl mod_perl mod_auth_mysql
