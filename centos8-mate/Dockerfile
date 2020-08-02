# https://github.com/danchitnis/container-xrdp

FROM centos:8

RUN yum -y update

RUN yum install -y epel-release

RUN yum -y groups install "MATE Desktop"

RUN bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'

RUN yum install -y xrdp xorgxrdp

RUN yum -y install sudo nload passwd nano

RUN yum -y install pluma caja-open-terminal

COPY ./build/xrdp.ini /etc/xrdp/

COPY ./build/centos8-sesman.ini /etc/xrdp/
RUN mv /etc/xrdp/centos8-sesman.ini /etc/xrdp/sesman.ini

COPY ./build/startwm-mate.sh /etc/xrdp/
RUN mv /etc/xrdp/startwm-mate.sh /etc/xrdp/startwm.sh

COPY ./build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

