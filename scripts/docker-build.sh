#!/bin/bash

TAG=$1

if [ -z "$TAG" ]; then
    echo "Usage: $0 <tag>"
    exit 1
fi

docker buildx build --platform linux/amd64,linux/arm64 -t mysmax/python-matter-server:latest -t mysmax/python-matter-server:$TAG --push .
