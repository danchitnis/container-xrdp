# https://github.com/danchitnis/container-xrdp

FROM fedora:latest

RUN dnf -y update

RUN dnf -y groupinstall xfce

RUN bash -c 'echo PREFERRED=/usr/bin/xfce4-session > /etc/sysconfig/desktop'

RUN dnf install -y xrdp xorgxrdp

RUN dnf -y install sudo nload passwd nano gedit

RUN dnf clean all

##### END of installations

COPY ./build/xrdp.ini /etc/xrdp/

COPY ./build/centos8-sesman.ini /etc/xrdp/
RUN mv /etc/xrdp/centos8-sesman.ini /etc/xrdp/sesman.ini

COPY ./build/startwm-xfce.sh /etc/xrdp/
RUN mv /etc/xrdp/startwm-xfce.sh /etc/xrdp/startwm.sh

RUN chmod a+x /etc/xrdp/startwm.sh

COPY ./build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

