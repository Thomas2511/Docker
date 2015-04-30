#!/bin/bash

docker build -t sshtest/mission02 .
docker run --name mission02 -P -h 42born2code -t sshtest/mission02:latest

# boot2docker ip (ex : -> 192.168.59.103)
# docker ps (ex : -> 37659)
# ssh -p 37659 tdieumeg@192.168.59.103
