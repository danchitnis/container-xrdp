FROM amazonlinux:latest

RUN yum -y update

RUN amazon-linux-extras install mate-desktop1.x

RUN bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'

RUN amazon-linux-extras enable epel

#RUN yum install -y epel-release
RUN amazon-linux-extras install epel

RUN yum install -y xrdp xorgxrdp

RUN yum -y install sudo nload passwd nano

RUN yum -y install pluma caja-open-terminal

COPY ../build/xrdp.ini /etc/xrdp/
COPY ../build/startwm.sh /etc/xrdp/

RUN chmod a+x /etc/xrdp/startwm.sh

COPY ../build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

