#!/bin/bash
NODE_NAME="node-mysql"
MYSQL_DATA='$HOME/docker_data/mysql'
docker-machine create -d virtualbox $NODE_NAME
docker-machine ssh $NODE_NAME "echo $MYSQL_DATA"
