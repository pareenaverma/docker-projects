#!/bin/bash

export DOCKER_BUILDKIT=1
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx build --platform linux/arm64,linux/arm/v7 -t pareenaverma/c-hello-world --push .

