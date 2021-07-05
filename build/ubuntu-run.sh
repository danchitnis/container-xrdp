#!/bin/bash

# Add users
# bash /usr/bin/create-users.sh

addgroup --gid 999 foo
useradd -m -u 999 -s /bin/bash -g foo foo
echo foo:bar | /usr/sbin/chpasswd
usermod -aG sudo foo






echo -e "This script is ended\n"

echo -e "starting xrdp services...\n"
xrdp-sesman && xrdp -n 
