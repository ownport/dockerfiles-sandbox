FROM ubuntu:trusty

RUN apt-get install -y wget

RUN wget --progress=dot:mega --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  \
        http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz -O /tmp/jdk-7u71-linux-x64.tar.gz && \
        mkdir /tmp/jdk17/ && tar xzf /tmp/jdk-7u71-linux-x64.tar.gz -C /tmp/jdk17/ && \
        rm /tmp/jdk-7u71-linux-x64.tar.gz && mv /tmp/jdk17/* /opt

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /opt/jdk1.7.0_71
ENV PATH $JAVA_HOME/bin:$PATH
