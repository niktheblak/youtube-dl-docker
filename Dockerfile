FROM debian:latest

RUN apt update \
  && apt install -y -q ffmpeg python3 python3-pip \
  && rm -r /var/cache/apt/
RUN pip3 install --no-cache-dir youtube-dl

VOLUME /output
ENTRYPOINT ["/usr/local/bin/youtube-dl"]
