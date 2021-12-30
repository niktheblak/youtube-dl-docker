#!/usr/bin/env bash

docker run \
  -it \
  --rm \
  -v $PWD/output:/output \
  youtube-dl:latest \
  -o '/output/%(title)s.%(ext)s' \
  "$@"
