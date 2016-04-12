#!/usr/bin/env bash

echo "the name of container:"
read name

echo "the port of container:"
read port

echo "the ssl port of container:"
read port_ssl

mkdir -p /opt/tomcat/$name && chmod -R 777 /opt/tomcat/$name

docker run -d \
    --name $name \
    -p $port:8080 \
    -p $port_ssl:8443 \
    -v /opt/tomcat/$name/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/$name/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat