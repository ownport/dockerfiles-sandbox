FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y --no-install-recommends supervisor  

RUN apt-get autoclean && apt-get autoremove

