#!/usr/bin/env bash

# yiqirong-web
mkdir -p /opt/tomcat/yiqirong-web
mkdir -p /opt/tomcat/yiqirong-web/logs
mkdir -p /opt/tomcat/yiqirong-web/webapps

chmod -R 777 /opt/tomcat/yiqirong-web

docker run -d \
    --name yiqirong-web \
    -p 80:8080 \
    -p 443:8443 \
    -v /opt/tomcat/yiqirong-web/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/yiqirong-web/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat

#yiqirong-app
mkdir -p /opt/tomcat/yiqirong-app
mkdir -p /opt/tomcat/yiqirong-app/logs
mkdir -p /opt/tomcat/yiqirong-app/webapps

chmod -R 777 /opt/tomcat/yiqirong-app

docker run -d \
    --name yiqirong-app \
    -p 8081:8080 \
    -p 8444:8443 \
    -v /opt/tomcat/yiqirong-app/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/yiqirong-app/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat

#yiqirong-exp-app
mkdir -p /opt/tomcat/yiqirong-exp-app
mkdir -p /opt/tomcat/yiqirong-exp-app/logs
mkdir -p /opt/tomcat/yiqirong-exp-app/webapps

chmod -R 777 /opt/tomcat/yiqirong-exp-app

docker run -d \
    --name yiqirong-exp-app \
    -p 8082:8080 \
    -p 8445:8443 \
    -v /opt/tomcat/yiqirong-exp-app/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/yiqirong-exp-app/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat

#bytter-interface
mkdir -p /opt/tomcat/bytter-interface
mkdir -p /opt/tomcat/bytter-interface/logs
mkdir -p /opt/tomcat/bytter-interface/webapps

chmod -R 777 /opt/tomcat/bytter-interface

docker run -d \
    --name bytter-interface \
    -p 8083:8080 \
    -p 8446:8443 \
    -v /opt/tomcat/bytter-interface/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/bytter-interface/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat

#yiqirong-eop
mkdir -p /opt/tomcat/yiqirong-eop
mkdir -p /opt/tomcat/yiqirong-eop/logs
mkdir -p /opt/tomcat/yiqirong-eop/webapps

chmod -R 777 /opt/tomcat/yiqirong-eop

docker run -d \
    --name yiqirong-eop \
    -p 8085:8080 \
    -p 8448:8443 \
    -v /opt/tomcat/yiqirong-eop/logs:/usr/local/tomcat/logs \
    -v /opt/tomcat/yiqirong-eop/webapps:/usr/local/tomcat/webapps \
    registry.aliyuncs.com/zuowenbo/tomcat