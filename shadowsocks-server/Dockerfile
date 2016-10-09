FROM centos:6
MAINTAINER Zachary Zhao <zachary@zinix.org>

RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf && \
    rm -rf /etc/yum.repos.d/* && \
    curl -L http://mirrors.163.com/.help/CentOS6-Base-163.repo > /etc/yum.repos.d/CentOS-Base-163.repo

RUN yum install -y curl

RUN curl -fsSL "http://storage.zinix.org/ss-server-latest.tar.gz" > "/tmp/shadowsocks-server.tar.gz"

RUN mkdir -p /export/servers

RUN tar -C /export/servers -xzf /tmp/shadowsocks-server.tar.gz

RUN cp /export/servers/shadowsocks-server/etc/config.json.sample /export/servers/shadowsocks-server/etc/config.json

RUN sed -E -i 's/__PRIVATE_PASSWD__/8300/g' /export/servers/shadowsocks-server/etc/config.json

RUN sed -E -i 's/__PUBLIC_PASSWD__/8390/g' /export/servers/shadowsocks-server/etc/config.json

COPY boot.sh /tmp/

ENTRYPOINT ["/tmp/boot.sh"]
