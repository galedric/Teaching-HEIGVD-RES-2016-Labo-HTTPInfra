#!/bin/bash

docker kill $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker build -t http/step3 .

docker run -d http/step1
docker run -d http/step2
docker run -d -p 80:80 http/step3

