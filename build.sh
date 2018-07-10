#! /bin/bash


# lms image tag
VERSION=7.9.1
DOCKERHUBUSER=mrtestone
REPONAME=armhf-lms

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/$REPONAME:$VERSION

# build runtime
sudo docker build -t $IMAGE_NAME .

# push to docker hub
sudo docker push $IMAGE_NAME
