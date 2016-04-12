#!/usr/bin/env bash

docker stop yiqirong-web && docker rm yiqirong-web && rm -rf /opt/tomcat/yiqirong-web
docker stop yiqirong-app && docker rm yiqirong-app && rm -rf /opt/tomcat/yiqirong-app
docker stop yiqirong-exp-app && docker rm yiqirong-exp-app && rm -rf /opt/tomcat/yiqirong-exp-app
docker stop bytter-interface && docker rm bytter-interface && rm -rf /opt/tomcat/bytter-interface
docker stop yiqirong-eop && docker rm yiqirong-eop && rm -rf /opt/tomcat/yiqirong-eop