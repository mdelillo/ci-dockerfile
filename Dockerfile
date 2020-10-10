FROM ubuntu:18.04

MAINTAINER markdelillo@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      unzip \
      vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
