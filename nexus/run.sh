#!/usr/bin/env bash

mkdir -p /opt/nexus && chmod -R 777 /opt/nexus

docker run -d \
    --name nexus \
    --restart=always \
    -p 10080:8081 \
    -v /opt/nexus:/sonatype-work \
    registry.aliyuncs.com/zuowenbo/nexus