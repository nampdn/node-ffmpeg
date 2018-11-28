FROM node:11
MAINTAINER nampdn

USER root

RUN apt-get update && apt-get install -y sudo libssl-dev
