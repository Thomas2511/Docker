#!/bin/bash

docker build -t hello/world:v42 .
docker run -i -P -h 42born2code -t hello/world:v42

# boot2docker ip (ex : -> 192.168.59.103).
# docker ps (ex : -> 37659).
# Sur le browser entrer l'adresse 192.168.59.103:37659 -> page hello/world.
