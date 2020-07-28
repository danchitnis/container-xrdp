FROM amazonlinux:latest

RUN yum -y update

RUN amazon-linux-extras install mate-desktop1.x

RUN yum -y install openssh-server

RUN yum -y install nano

RUN bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'

RUN amazon-linux-extras enable epel

RUN yum install -y epel-release

RUN yum install -y xrdp xorgxrdp

COPY xrdp.ini /etc/xrdp/
COPY startwm.sh /etc/xrdp/

RUN chmod a+x /etc/xrdp/startwm.sh

COPY run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

