FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get -y -q install lighttpd

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD scripts/run-as.sh /run-as.sh

VOLUME ['/data']

CMD ["run-lighttpd.sh"]
