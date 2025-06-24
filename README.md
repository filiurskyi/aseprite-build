# Readme

This repo contains script to automate building of `aseprite` inside `docker` locally without need of system changes or extra package installations.

## Dependencies

- `docker`
Follow official guide for `docker` installation

## Instructions

- `git pull` for current repo
- `./build.sh`

After finish, new folder `./build` should contain built binaries.

Optionally:

- `docker rmi aseprite-builder`
