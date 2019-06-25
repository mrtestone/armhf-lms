#! /bin/bash


# lms image tag
# (Nightly)
VERSION=7.9.2-1561089896
DOCKERHUBUSER=baztian
REPONAME=armhf-lms

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/$REPONAME:$VERSION

# build runtime
docker build -t $IMAGE_NAME .

# push to docker hub
#sudo docker push $IMAGE_NAME
