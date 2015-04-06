FROM ubuntu:trusty

RUN apt-get install -y wget

RUN mkdir -p /deploy/scripts/
RUN wget --progress=dot:mega --no-check-certificate --no-cookies \
	https://raw.githubusercontent.com/ownport/dockerfiles/master/scripts/deploy2opt.sh \
	-O /deploy/scripts/deploy2opt.sh
RUN chmod +x /deploy/scripts/*.sh


RUN /deploy/scripts/deploy2opt.sh \
	http://download.oracle.com/otn-pub/java/jdk/7u76-b13/server-jre-7u76-linux-x64.tar.gz \
	'--header "Cookie: oraclelicense=accept-securebackup-cookie"'

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /deploy

ENV JAVA_HOME /opt/jdk1.7.0_76
ENV PATH $JAVA_HOME/bin:$PATH
