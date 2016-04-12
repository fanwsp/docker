#!/usr/bin/env bash

echo "the name of container:"
read name

docker stop $name && docker rm $name

rm -rf /opt/tomcat/$name