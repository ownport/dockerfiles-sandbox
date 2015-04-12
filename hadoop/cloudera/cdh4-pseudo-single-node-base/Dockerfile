FROM cdh4-base:latest

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /deploy/ && \
    wget --no-check-certificate -qO- https://github.com/ownport/docker-creator/archive/master.tar.gz | tar -xz -C /deploy

# Install Hadoop in pseudo-distributed mode
RUN apt-get update && apt-get install -y hadoop-0.20-conf-pseudo
RUN echo "export JAVA_HOME=${JAVA_HOME}" >>/etc/hadoop/conf.pseudo.mr1/hadoop-env.sh

RUN /deploy/docker-creator-master/rerun cdh-deploy:verify-cdh4-pseudo-single-node-base

# clean temporary files after installation
RUN /deploy/docker-creator-master/rerun misc:clean
