#!/bin/bash

#####  APP specific variables  #######
DOCKER_USER=macxxn
IMAGE_NAME=mx-vue
IMAGE_TAG=dockerdemo
######################################

echo "Building app docker image = ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker build -f deploy/Dockerfile -t ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG} .

echo ""
echo "Generated docker image = ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
echo ""


echo "Publishing image to Docker Hub: "${DOCKER_USER}/${IMAGE_NAME} with tag as ${IMAGE_TAG}

echo "login wih user:" ${DOCKER_USER}
docker login -u ${DOCKER_USER}

docker push ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG}

echo "images published as "${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}