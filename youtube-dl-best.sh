#!/usr/bin/env bash

docker run \
  -it \
  --rm \
  -v $PWD/output:/output \
  youtube-dl:latest \
  -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' \
  --merge-output-format mp4 \
  -o '/output/%(title)s.%(ext)s' \
  "$@"
