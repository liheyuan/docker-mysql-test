#!/bin/bash
NODE_NAME="node-mysql"
DOCKER_NAME="sbmvt-mysql"
MYSQL_DATA="$HOME/docker_data/mysql"
eval $(docker-machine env $NODE_NAME)
docker run --rm --name $DOCKER_NAME -v "$MYSQL_DATA":/var/lib/mysql -e MYSQL_ROOT_PASSWORD=hehehe -p3306:3306 -d mysql:5.7
