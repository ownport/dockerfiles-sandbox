# based on official dockerfile/nginx
# https://github.com/dockerfile/nginx/blob/master/Dockerfile
FROM ubuntu:trusty

RUN \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C && \
    echo 'deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main' >> /etc/apt/sources.list && \
    echo 'deb-src http://ppa.launchpad.net/nginx/stable/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y -q install nginx

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /run/nginx/
ADD scripts/run-as.sh /run-as.sh

# Define mountable directories.
VOLUME ["/etc/nginx/", "/var/log/nginx", "/var/www/html", "/var/lib/nginx"]

# Expose ports.
EXPOSE 8080

# Define default command.
CMD ["nginx"]

