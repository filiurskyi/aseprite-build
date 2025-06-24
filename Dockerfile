FROM ubuntu:22.04

ARG UID=1000
ARG GID=1000

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential cmake ninja-build git curl unzip pkg-config \
    libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev

RUN groupadd --gid $GID aseprite && \
    useradd --uid $UID --gid $GID --create-home aseprite

USER aseprite

WORKDIR /app

RUN git clone https://github.com/aseprite/aseprite.git && \
    cd aseprite && \
    git submodule update --init --recursive && \
    cd - && \
    chown aseprite:aseprite -R ./*