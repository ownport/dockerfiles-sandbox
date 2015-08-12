# RethinkDB

## Based on 

- ubuntu:trusty
- official [dockerfile/rethinkdb](https://github.com/dockerfile/rethinkdb)

## Tag

rethinkdb:latest

## How to run rethinkdb-docker

```sh
$ docker run -d --name="rethinkdb" -p 8080:8080 -p 28015:28015 -p 29015:29015 -v $(pwd)/data:/data rethinkdb:latest rethinkdb -d /data --bind all
```