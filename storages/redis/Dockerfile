FROM ubuntu:trusty
MAINTAINER Andrey Usov <ownport@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y -q redis-server

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 6379
CMD [ "redis-server" ]
