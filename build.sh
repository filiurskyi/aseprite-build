#!/bin/bash

# docker build -t aseprite-builder .

docker run --rm -it \
  -v "$PWD":/app \
  -w /app \
  aseprite-builder \
  bash -c "\
    rm -rf aseprite || true && \
    git clone https://github.com/aseprite/aseprite.git && \
    cd aseprite && \
    git submodule update --init --recursive && \
    ./build.sh --auto --norun"
