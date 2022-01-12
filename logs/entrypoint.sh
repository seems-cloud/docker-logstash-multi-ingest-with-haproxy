#!/bin/bash

rm -f /data/server.log

for i in $(seq 1 1000000); do
  MESSAGE="$(date +'%Y-%m-%d %H:%M:%S.%N') INFO Went to home $(date +'%Y-%m-%d %H:%M:%S.%N')"
  echo "${MESSAGE}" >>/data/server.log
done
