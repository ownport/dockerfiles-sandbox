FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y -q install \
    libssl-dev \
    python \
    python-dev \
    python-pip \
	python-requests \
    python-lxml \
    python-nose \
    python-coverage \
    sqlite3

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD scripts/run-as.sh /run-as.sh

VOLUME ['/data']
