#!/bin/bash

TEMP=$(docker ps -a | grep -v "CONTAINER" | cut -d " " -f 1)
for container in $TEMP; do
	docker rm $container
done
