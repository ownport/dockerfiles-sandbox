# Ubuntu-sshd server

Dockerized SSH service, built on top of Ubuntu 14.04 image.

## Config:

- PermitRootLogin yes
- UsePAM no
- exposed port 22
- default command: /usr/sbin/sshd -D
- root password: root

## How to run

```sh
$ docker run -d -p 8022:22 --name sshd-server sshd:u14.04
$ ssh root@localhost -p 8022
```



