#!/usr/bin/env bash

mkdir -p /opt/mysql && chmod -R 777 /opt/mysql

docker run -d \
    --name mysql \
    --restart=always \
    -p 3306:3306 \
    -v /opt/mysql:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=123456 \
    registry.aliyuncs.com/zuowenbo/mysql
