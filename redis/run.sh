#!/usr/bin/env bash

mkdir -p /opt/redis && chmod -R 777 /opt/redis

docker run -d \
    --name redis \
    --restart=always \
    -p 6379:6379 \
    -v /opt/redis/:/data \
    registry.aliyuncs.com/zuowenbo/redis