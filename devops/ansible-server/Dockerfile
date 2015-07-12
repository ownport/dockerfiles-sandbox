FROM ubuntu:trusty

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y --no-install-recommends software-properties-common 

RUN apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        ansible \
        aptitude \
        python-pip \
        python-apt && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts

RUN pip install \
    docker-py \
    python-consul 

RUN apt-get autoclean && apt-get autoremove



