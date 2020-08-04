# https://github.com/danchitnis/container-xrdp

FROM fedora:latest

RUN dnf -y update

#RUN dnf -y install fedora-release --allowerasing

RUN dnf -y install fedora-release-matecompiz --allowerasing

#RUN dnf -y install compiz compiz-manager libcompizconfig

RUN bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'

RUN dnf install -y xrdp xorgxrdp openssh

RUN dnf -y install sudo nload passwd nano pluma

RUN dnf clean all

##### END of installations

COPY ./build/xrdp.ini /etc/xrdp/

COPY ./build/centos8-sesman.ini /etc/xrdp/
RUN mv /etc/xrdp/centos8-sesman.ini /etc/xrdp/sesman.ini

COPY ./build/startwm-mate.sh /etc/xrdp/
RUN mv /etc/xrdp/startwm-mate.sh /etc/xrdp/startwm.sh

RUN chmod a+x /etc/xrdp/startwm.sh

COPY ./build/run.sh /
RUN chmod +x /run.sh

EXPOSE 3389

ENTRYPOINT ["/run.sh"]

