#!/bin/bash

echo "deleting images..."

PATTERN="danchitnis/xrdp"

docker images -a | grep $PATTERN | awk '{print $3}' | xargs docker rmi

echo -e "exiting"
