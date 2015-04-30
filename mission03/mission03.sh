#!/bin/bash

docker build -t test/mission03 .
docker run --name mission03 -i -v /tmp:/tmp -h 42born2code -t test/mission03

# Ne pas oublier de se connecter en ssh a boot2docker. "boot2docker ssh"
# VOLUME lie un volume du container a un volume de la VM boot2docker.
