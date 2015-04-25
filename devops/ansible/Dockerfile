FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

## ansible - Configuration management, deployment, and task execution system --

RUN apt-get update && apt-get install -y ansible

# add run-as.sh script
ADD scripts/run-as.sh /bin/run-as.sh
RUN chmod +x /bin/run-as.sh

# volume directory
VOLUME ["/data"]
