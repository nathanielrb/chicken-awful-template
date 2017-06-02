FROM ubuntu:16.04
MAINTAINER "nathaniel.rudavsky@gmail.com"

RUN  apt-get update \
  && apt-get install -y wget sudo make gcc \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://code.call-cc.org/releases/4.12.0/chicken-4.9.0.1.tar.gz && \
   tar xf chicken-4.9.0.1.tar.gz && \
   cd  chicken-4.9.0.1 && \
   sudo make PLATFORM=linux install && \
   cd ../ && \
   rm -r chicken-4.9.0.1  chicken-4.9.0.1.tar.gz

RUN chicken-install awful

