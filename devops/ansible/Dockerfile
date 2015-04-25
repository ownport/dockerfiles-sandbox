FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

## ansible - Configuration management, deployment, and task execution system --

RUN apt-get update && apt-get install -y ansible

# volume directory
VOLUME ["/data"]
