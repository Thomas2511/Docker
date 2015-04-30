#!/bin/sh

boot2docker init
boot2docker start
eval `boot2docker shellinit 2>/dev/null`

zsh
