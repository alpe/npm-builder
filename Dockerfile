FROM ubuntu:trusty

MAINTAINER Alex Peters <ap@optiopay.com>

ENV NODE_VERSION 0.12.7
RUN apt-get update && apt-get install -y curl openssh-client build-essential
RUN curl -LOks https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz && \
    tar zxvf node-v$NODE_VERSION-linux-x64.tar.gz -C /opt
ENV PATH="/opt/node-v$NODE_VERSION-linux-x64/bin:$PATH"

VOLUME /src
WORKDIR /src

CMD ["npm", "intstall"]

