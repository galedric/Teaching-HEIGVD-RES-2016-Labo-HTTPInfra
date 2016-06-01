#!/bin/bash

docker rm -f $(docker ps -a -q)

docker build -t http/step2 .
docker run -d -p 8080:80 http/step2

