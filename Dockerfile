FROM node:11-alpine
MAINTAINER nampdn <nampdn@protonmail.com>

USER root

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    # install chromaprint and fdk-aac-dev packages
    apk add --update --no-cache \
      ca-certificates \
      ffmpeg \
      libva-intel-driver \
      fdk-aac-dev \
      fdk-aac-dev \
      git \
      openssl \
      openssl-dev \
    && rm -rf /var/cache/*

