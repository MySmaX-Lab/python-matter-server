#!/bin/bash

TAG=$1
PUSH=""

if [ "$2" = "--push" ]; then
    PUSH="--push"
fi

if [ -z "$TAG" ]; then
    echo "Usage: $0 <tag> [--push]"
    exit 1
fi

docker buildx build --platform linux/amd64,linux/arm64 -t mysmax/python-matter-server:latest -t mysmax/python-matter-server:$TAG $PUSH .
