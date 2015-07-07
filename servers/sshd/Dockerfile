FROM ubuntu:trusty

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y --no-install-recommends openssh-server

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

# RUN apt-get update && \
#     apt-get install -y python2.7 openssh-server sudo && \
#     apt-get clean && \
#     update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 && \
#     /etc/init.d/ssh start && \
#     /etc/init.d/ssh stop

# ADD keys/id_rsa.pub /root/.ssh/authorized_keys
