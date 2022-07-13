#!/bin/bash

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 188691447767.dkr.ecr.ap-south-1.amazonaws.com
docker build -t nodeapp .
docker tag nodeapp:latest 188691447767.dkr.ecr.ap-south-1.amazonaws.com/nodeapp:latest
docker push 188691447767.dkr.ecr.ap-south-1.amazonaws.com/nodeapp:latest