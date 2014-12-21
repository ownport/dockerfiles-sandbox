dockerfiles
===========

The collection of dockerfiles

## Docker hints

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

