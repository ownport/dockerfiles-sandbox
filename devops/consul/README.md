# docker-consul

Docker container running Consul node for clustering.

## Create Docker image

```sh
$ docker build -t "consul:0.5.2" 0.5.2/
```

## Run Consul server

docker-compose.yml file for running Consul server

```yaml
server:
  image: consul:0.5.2
  ports:
    - 127.0.0.1:8500:8500
```

```sh
$ docker-compose up -d
```

## Service commands

- Container IP address 

```sh
$ docker inspect -format '{{ .NetworkSettings.IPAddress }}' <container-name>
```


## Links

- [progrium/docker-consul](https://github.com/progrium/docker-consul) Dockerized Consul Agent
- [stlhrt/docker-consul](https://github.com/stlhrt/docker-consul) 

