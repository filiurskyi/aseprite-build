#!/bin/bash

mkdir -p build

docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t aseprite-builder .

docker run -it --rm \
  -v "$PWD/build":/home/aseprite/build \
  aseprite-builder \
  bash -c 'cd /app/aseprite && ./build.sh --auto --norun && cp -a /app/aseprite/build/bin/. /home/aseprite/build/'

docker rmi aseprite-builder