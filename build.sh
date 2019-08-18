#! /bin/bash


# lms image tag
VERSION=7.9.2
DOCKERHUBUSER=mrtestone
REPONAME=armhf-lms

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/$REPONAME:$VERSION

# build runtime
docker build -t $IMAGE_NAME .

# push to docker hub
docker push $IMAGE_NAME
