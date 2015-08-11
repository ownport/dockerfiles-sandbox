FROM ubuntu:trusty

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7 && \
    echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | sudo tee /etc/apt/sources.list.d/scrapy.list && \
    apt-get update && sudo apt-get -y install scrapy

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /data/bin
RUN mkdir -p /data/project

ADD scripts/create-env.sh /data/bin/
RUN chmod +x /data/bin/*.sh

CMD /data/bin/create-env.sh