FROM ubuntu:trusty

RUN apt-get install -y wget

RUN mkdir -p /deploy/scripts/
RUN wget --progress=dot:mega --no-check-certificate --no-cookies \
	https://raw.githubusercontent.com/ownport/dockerfiles/master/scripts/deploy2opt.sh \
	-O /deploy/scripts/deploy2opt.sh
RUN chmod +x /deploy/scripts/*.sh


RUN /deploy/scripts/deploy2opt.sh \
	http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jre-8u40-linux-x64.tar.gz \
	'--header "Cookie: oraclelicense=accept-securebackup-cookie"'

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /deploy

ENV JAVA_HOME /opt/jdk1.8.0_40
ENV PATH $JAVA_HOME/bin:$PATH
