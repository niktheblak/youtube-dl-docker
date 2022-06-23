FROM debian:latest

RUN apt update \
  && apt install -y -q ffmpeg python3 python3-pip \
  && rm -r /var/cache/apt \
  && rm -r /var/lib/apt/lists
RUN pip3 install --no-cache-dir --upgrade youtube-dl

VOLUME /output
WORKDIR /output
ENTRYPOINT ["/usr/local/bin/youtube-dl"]
