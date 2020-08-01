FROM amazonlinux:latest

RUN yum -y update

RUN amazon-linux-extras enable epel

RUN amazon-linux-extras install epel

RUN yum -y groupinstall xfce

RUN bash -c 'echo PREFERRED=/usr/bin/startxfce4 > /etc/sysconfig/desktop'

RUN yum install -y xrdp xorgxrdp

RUN yum -y install sudo nload passwd nano

COPY ../build/xrdp.ini /etc/xrdp/
COPY ../build/startwm.sh /etc/xrdp/

RUN chmod a+x /etc/xrdp/startwm-xfce.sh

COPY ../build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]
