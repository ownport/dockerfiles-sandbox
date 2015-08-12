FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y --no-install-recommends wget

RUN echo "deb http://download.rethinkdb.com/apt trusty main" > /etc/apt/sources.list.d/rethinkdb.list && \
	wget -O- http://download.rethinkdb.com/apt/pubkey.gpg | apt-key add - && \
	apt-get update && \
	apt-get install -y --no-install-recommends rethinkdb

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Define mountable directories.
VOLUME ["/data"]
# Define working directory.
WORKDIR /data

# Expose ports.
# - 8080: web UI
# - 28015: process
# - 29015: cluster
EXPOSE 8080
EXPOSE 28015
EXPOSE 29015

# Define default command.
CMD ["rethinkdb", "--bind", "all"]


