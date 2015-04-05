FROM ubuntu:trusty

RUN apt-get install -y wget

RUN wget --progress=dot:mega --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  \
        http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz -O /tmp/jdk-8u25-linux-x64.tar.gz && \
        mkdir /tmp/jdk18/ && tar xzf /tmp/jdk-8u25-linux-x64.tar.gz -C /tmp/jdk18/ && \
        rm /tmp/jdk-8u25-linux-x64.tar.gz && mv /tmp/jdk18/* /opt

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /opt/jdk1.8.0_25
ENV PATH $JAVA_HOME/bin:$PATH
