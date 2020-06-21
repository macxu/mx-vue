#!/bin/bash

#####  APP specific variables  #######
DOCKER_USER=macxxn
IMAGE_NAME=mx-vue
IMAGE_TAG=dockerdemo

HOST_PORT=80
if [ "$1" != "" ]; then
    echo "Host port specified is: $1"
    HOST_PORT=$1
fi
######################################

echo "Building app docker image = ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker build -f deploy/Dockerfile -t ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG} .

echo ""
echo "Generated docker image = ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
echo ""

docker run -p ${HOST_PORT}:80 -d ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}

# IMAGE_NAME=${IMAGE_NAME} IMAGE_TAG=${IMAGE_TAG} HOST_PORT=${HOST_PORT} docker-compose -f deploy/docker-compose.yml up -d