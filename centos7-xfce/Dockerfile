# https://github.com/danchitnis/container-xrdp

FROM centos:7

RUN yum -y update

RUN yum -y install epel-release

RUN yum -y groupinstall xfce

RUN bash -c 'echo PREFERRED=/usr/bin/xfce4-session > /etc/sysconfig/desktop'

RUN yum install -y xrdp xorgxrdp

RUN yum -y install sudo nload passwd nano

COPY ./build/xrdp.ini /etc/xrdp/
COPY ./build/startwm-xfce.sh /etc/xrdp/

RUN mv /etc/xrdp/startwm-xfce.sh /etc/xrdp/startwm.sh

RUN chmod a+x /etc/xrdp/startwm.sh

COPY ./build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

