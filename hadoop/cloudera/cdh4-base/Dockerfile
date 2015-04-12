FROM ubuntu:precise

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y apt-utils
RUN apt-get install -y sudo wget

RUN mkdir -p /deploy/ && \
	wget --no-check-certificate -qO- https://github.com/ownport/docker-creator/archive/master.tar.gz | tar -xz -C /deploy

RUN /deploy/docker-creator-master/rerun install:oracle-java 7u75:Server-JRE

ENV JAVA_HOME /opt/jdk1.7.0_75
ENV PATH $JAVA_HOME/bin:$PATH

RUN /deploy/docker-creator-master/rerun cdh-deploy:install-1click cdh4-ubuntu-precise

RUN /deploy/docker-creator-master/rerun misc:clean


