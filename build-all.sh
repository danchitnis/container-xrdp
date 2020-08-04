#!/bin/bash

echo "Building all the Docker images"
echo "make sure you have Docker installed"
echo "you have to run this script as sudo user"
echo "see here for more details:"
echo "https://github.com/danchitnis/container-xrdp"
echo ""
echo "starting the build process..."

REPO="danchitnis/xrdp"

docker build -t $REPO:amazon-mate -f ./amazon-mate/Dockerfile .
wait
docker build -t $REPO:amazon-xfce -f ./amazon-xfce/Dockerfile .
wait
docker build -t $REPO:centos7-mate -f ./centos7-mate/Dockerfile .
wait
docker build -t $REPO:centos7-xfce -f ./centos7-xfce/Dockerfile .
wait
#docker build -t $REPO:centos8-mate -f ./centos8-mate/Dockerfile .
wait
docker build -t $REPO:centos8-xfce -f ./centos8-xfce/Dockerfile .
wait
docker build -t $REPO:fedora-xfce -f ./fedora-xfce/Dockerfile .


echo "build process is finished"
echo -e "exiting"