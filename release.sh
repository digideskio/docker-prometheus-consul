#!/bin/bash

# login to the docker hub
docker login

# build docker image and tag it with the proper name
docker build -t emergingtechnologyadvisors/prometheus-consul .

# push image to docker hub
docker push emergingtechnologyadvisors/prometheus-consul
