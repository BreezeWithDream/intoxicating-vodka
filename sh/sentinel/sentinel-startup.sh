#!/bin/bash
PORT=8858

java -jar /usr/local/softwares/sentinel/sentinel-dashboard-1.8.1.jar --server.port=8858 > /usr/local/softwares/sentinel/logs/sentinel.log 2>&1
if lsof -i :$PORT; then
  echo "端口 $PORT 已被占用"
else
  echo "端口 $PORT 可用"
fi