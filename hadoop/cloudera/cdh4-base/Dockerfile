FROM ubuntu:precise

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y apt-utils
RUN apt-get install -y wget

RUN mkdir -p /deploy/ && \
	wget --no-check-certificate -qO- https://github.com/ownport/docker-creator/archive/master.tar.gz | tar -xvz -C /deploy

RUN /deploy/docker-creator-master/rerun install:oracle-java 7u75:Server-JRE
RUN /deploy/docker-creator-master/rerun install:cloudera-cdh-1click-install cdh4-ubuntu-precise

RUN /deploy/docker-creator-master/rerun misc:clean

ENV JAVA_HOME /opt/jdk1.7.0_75
ENV PATH $JAVA_HOME/bin:$PATH

