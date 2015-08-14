FROM supervisord:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y --no-install-recommends wget unzip

RUN wget --progress=dot:mega --no-check-certificate \
		https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip -O /tmp/consul.zip && \
    unzip /tmp/consul.zip -d /bin && \
    rm /tmp/consul.zip

RUN mkdir -p /data/consul/
RUN mkdir /etc/consul.d/
ADD conf/consul-config.json /etc/consul.d/

# consul ports
EXPOSE 8500 8600 8600/udp 53 53/udp

VOLUME ["/data/", ]


