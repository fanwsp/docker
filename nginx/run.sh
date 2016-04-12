#!/usr/bin/env bash

echo "the name of container:"
read name

echo "the port of container:"
read port

mkdir -p /opt/nginx/$name && chmod -R 777 /opt/nginx/$name

docker run -d \
    --name $name \
    -p $port:80 \
    -v /opt/nginx/$name:/usr/share/nginx/html \
    registry.aliyuncs.com/zuowenbo/nginx