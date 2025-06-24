#!/bin/bash

docker build -t aseprite-builder .

docker run -it \
  -v "$PWD/build":/app/aseprite/build/bin \
  aseprite-builder \
  bash -c "\
    cd /app/aseprite && ./build.sh --auto --norun"
