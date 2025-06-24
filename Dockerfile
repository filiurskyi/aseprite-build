FROM ubuntu:22.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential cmake ninja-build git curl unzip pkg-config \
    libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev

WORKDIR /app

RUN git clone https://github.com/aseprite/aseprite.git && \
    cd aseprite && \
    git submodule update --init --recursive
