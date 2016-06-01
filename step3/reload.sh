#!/bin/bash

docker rm -f $(docker ps -a -q)

docker build -t http/step3 .

docker run -d --name dynamic http/step2
docker run -d --name static http/step1
docker run -d -p 80:80 --link static:static --link dynamic:dynamic http/step3

