# Consul dockerfiles

## Make Docker images

- base image

```sh
docker build -t 'consul:0.5.2' core/  
```

- server image

```sh
docker build -t 'consul/server:0.5.2' server/
```

- agent image

```sh
docker build -t 'consul/agent:0.5.2' agent/
```


