FROM cdh4-pseudo-single-node-base:latest

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /deploy/ && \
	wget --no-check-certificate -qO- https://github.com/ownport/docker-creator/archive/master.tar.gz | tar -xz -C /deploy

# copy configuration script
RUN mkdir -p /configs/config-cdh4-pseudo-single-node-hdfs/ && \
	/deploy/docker-creator-master/rerun cdh-deploy:config-cdh4-pseudo-single-node-hdfs \
		--export-to /configs/config-cdh4-pseudo-single-node-hdfs/ && \
	chmod +x /configs/config-cdh4-pseudo-single-node-hdfs/script

# clean temporary files after installation
RUN /deploy/docker-creator-master/rerun misc:clean

# NameNode and Secondary NameNode
EXPOSE 50070 50090

# DataNode
EXPOSE 50075 50010 50020

CMD ["/configs/config-cdh4-pseudo-single-node-hdfs/script", "--run"]

