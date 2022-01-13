#!/bin/bash

rm -f /data/server.log

RANDOM="`tr -dc A-Za-z0-9 </dev/urandom | head -c 1024 ; echo ''`"

for i in $(seq 1 100000); do
  MESSAGE="$(date +'%Y-%m-%d %H:%M:%S.%N') ${RANDOM}"
  echo "${MESSAGE}" >>/data/server.log
done
