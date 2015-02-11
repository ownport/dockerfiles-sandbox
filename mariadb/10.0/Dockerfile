FROM ubuntu:trusty
MAINTAINER Andrey Usov <ownport@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db && \
    echo 'deb http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main' >> /etc/apt/sources.list && \
    echo 'deb-src http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y -q install mariadb-server pwgen

RUN \
    rm -rf /var/lib/mysql/* && \
    rm -rf /var/log/mysql/* && \
    rm -rf /var/run/mysqld/* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD scripts/run-as.sh /run-as.sh
RUN chmod 775 /run-as.sh

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]

# Define default command.
CMD ["/run-as.sh"]

# Expose ports.
EXPOSE 3306
