FROM centos:7

RUN yum -y update

RUN yum install -y epel-release

RUN yum -y groups install "MATE Desktop"

RUN bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'

RUN yum install -y xrdp xorgxrdp

RUN yum -y install sudo nload passwd nano

RUN yum -y install pluma caja-open-terminal

COPY ../build/xrdp.ini /etc/xrdp/
COPY ../build/startwm.sh /etc/xrdp/

RUN chmod a+x /etc/xrdp/startwm-mate.sh

COPY ../build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

