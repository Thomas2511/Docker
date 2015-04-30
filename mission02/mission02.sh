#!/bin/bash

docker build -t sshtest/mission02 .
docker run --name mission02 -P -h 42born2code -t sshtest/mission02:latest
