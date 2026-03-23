#!/bin/bash
VERSION=$1                        # pass version as argument
USERNAME="thesugarglider"
IMAGE="my-hello-app"

docker build -t $IMAGE .
docker tag $IMAGE $USERNAME/$IMAGE:$VERSION
docker tag $IMAGE $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$VERSION
docker push $USERNAME/$IMAGE:latest

echo "✅ Pushed $USERNAME/$IMAGE:$VERSION and :latest"
