#!/usr/bin/env bash

apt-get update
apt-get install -y docker.io
# enable the remote api
sed -i s#.*DOCKER_OPTS=.*#"DOCKER_OPTS='-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock'"#g /etc/init/docker.conf
service docker restart
