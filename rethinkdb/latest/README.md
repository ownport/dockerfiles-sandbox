# RethinkDB

## Based on 

- ubuntu:trusty
- official [dockerfile/rethinkdb](https://github.com/dockerfile/rethinkdb)

## Tag

rethinkdb:latest

## Volume structure (example)

```
/rethinkdb-srv/
├── etc
│   └── rethinkdb
│       └── instances.d
│           └── default.conf
└── var
    ├── lib
    │   └── rethinkdb
    │       └── default
    ├── log
    │   └── rethinkdb
    └── run
        └── rethinkdb
```

You can make volume structure manually or by using script from `scripts/make-volume-def.sh`. For example:

```
$ scripts/make-volume-def.sh /data2/volumes/rethinkdb-srv/
```

## How to configure RethinkDB server

Please check `conf/default.conf` file

## How to run rethinkdb-docker

```sh
docker run -it --rm --name="rethinkdb-test" \
    -v ${RETHINKDB_DIR%%/}/etc/rethinkdb/:/etc/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/run/rethinkdb/:/var/run/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/lib/rethinkdb/:/var/lib/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/log/rethinkdb:/var/log/rethinkdb \
    -p 8080:8080 -p 28015:28015 -p 29015:29015 \
    rethinkdb:latest \
    /run-as.sh ${USER} ${UID} rethinkdb --bind all --config-file /etc/rethinkdb/instances.d/default.conf

```
or 
```sh
docker run -d --name="rethinkdb-test" \
    -v ${RETHINKDB_DIR%%/}/etc/rethinkdb/:/etc/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/run/rethinkdb/:/var/run/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/lib/rethinkdb/:/var/lib/rethinkdb/ \
    -v ${RETHINKDB_DIR%%/}/var/log/rethinkdb:/var/log/rethinkdb \
    -p 8080:8080 -p 28015:28015 -p 29015:29015 \
    rethinkdb:latest \
    /run-as.sh ${USER} ${UID} rethinkdb --bind all --config-file /etc/rethinkdb/instances.d/default.conf

```
