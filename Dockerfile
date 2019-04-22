FROM ubuntu:16.04

LABEL maintainer=john_04047210@163.com

RUN apt-get update \
  && apt-get install -y libgtest-dev cmake wget git-core gcc g++ python2.7 python-pip \
  && cd /usr/local/src \
  && wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz \
  && tar zxvf release-1.8.1.tar.gz && cd googletest-release-1.8.1 && mkdir build \
  && cd build && cmake .. \
  && make && make install
