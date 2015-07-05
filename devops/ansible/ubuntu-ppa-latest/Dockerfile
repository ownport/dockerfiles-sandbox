FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

## ansible - Configuration management, deployment, and task execution system --

RUN apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

RUN apt-get autoclean && apt-get autoremove

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
