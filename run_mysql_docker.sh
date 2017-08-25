#!/bin/bash
NODE_NAME="node-mysql"
DOCKER_NAME="sbmvt-mysql"
VOLUME_DATA='/var/lib/boot2docker/docker_data/mysql'
eval $(docker-machine env $NODE_NAME)
last_id=$(docker ps -l -q)
docker rm -f $last_id
docker run --rm --name $DOCKER_NAME -v "$VOLUME_DATA":/var/lib/mysql -e MYSQL_ROOT_PASSWORD=hehehe -p3306:3306 -d mysql:5.7
