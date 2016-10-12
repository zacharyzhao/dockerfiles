FROM centos:6
MAINTAINER Zachary Zhao <zachary@zinix.org>

RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf && \
    rm -rf /etc/yum.repos.d/* && \
    curl -L http://mirrors.163.com/.help/CentOS6-Base-163.repo > /etc/yum.repos.d/CentOS-Base-163.repo

RUN yum install -y openssh-server

RUN mkdir /root/.ssh && \
    chmod 700 /root/.ssh && \
    touch /root/.ssh/authorized_keys && \
    chmod 600 /root/.ssh/authorized_keys

COPY boot.sh /tmp/

COPY authorized_keys.root /tmp/

RUN cat /tmp/authorized_keys.root >> /root/.ssh/authorized_keys

ENTRYPOINT ["/tmp/boot.sh"]
