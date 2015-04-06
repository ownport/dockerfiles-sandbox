dockerfiles
===========

The collection of dockerfiles


## Docker hints

Docker installation on Ubuntu 14.04 LTS and run Ubuntu container

```
sudo apt-get install docker.io
sudo docker.io pull ubuntu
sudo docker.io run -i -t ubuntu /bin/bash
```

start the container daemon in background
```
docker run -v <hostdir>:<containerdir> -d <image>
```

attach to the running container
```
$ docker attach –sig-proxy=true <container>
```

detach and leaving the container running without exiting.
```
CTRL-P + CTRL-Q
```

### tagging images

```sh
$ ID=$(docker build -t creack/node .) # This build and tag the image with creack/node:latest
$ docker tag $ID creack/node:0.10.24  # Add a new tag
$ docker tag $ID creack/node:latest   # You can use this and skip the -t part from build
```

```bash
#!/bin/bash

set -o pipefail

IMAGE=...your image name...
VERSION=...the version...

docker build -t ${IMAGE}:${VERSION} . | tee build.log || exit 1
ID=$(tail -1 build.log | awk '{print $3;}')
docker tag $ID ${IMAGE}:latest

docker images | grep ${IMAGE}

docker run --rm ${IMAGE}:latest /opt/java7/bin/java -version
```

[source](http://stackoverflow.com/questions/22080706/how-to-create-named-and-latest-tag-in-docker/)


## Best practice

### Clean spaces

apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
rm -rf /etc/ssh/ssh_host_*
rm -rf /usr/share/man/??
rm -rf /usr/share/man/??_*


