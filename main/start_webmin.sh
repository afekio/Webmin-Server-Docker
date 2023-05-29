#!/bin/bash
docker rm $(docker ps -aq -f status=exited)
docker build -t webmin .
docker run -d --name webmin --network=host webmin:latest