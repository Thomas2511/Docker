#!/bin/bash

docker build -t hello/world:v42 .
docker run -i -p 44444:80 -h born2code -t hello/world:v42
