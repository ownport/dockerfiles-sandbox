# docker-nginx

## Based on 

- ubuntu:trusty
- official [dockerfile/nginx](https://github.com/dockerfile/nginx/blob/master/Dockerfile)

## Tag

nginx:stable

## Volume structure (example)

```
/nginx-def/
├── etc
│   └── nginx
│       ├── certs
│       ├── conf.d
│       └── sites-enabled
└── var
    ├── log
    │   └── nginx
    └── www
        └── html
```

You can make volume structure manually or by using script from `scripts/make-volume-def.sh`. For example:

```
$ scripts/make-volume-def.sh /data2/volumes/nginx-srv/
```

## How to configure nginx server

nginx.conf (basic configuration):
```
daemon off;
pid /run/nginx/nginx.pid;
worker_processes 1;

events {}

http {
    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;
    
    server {
        listen 8080;
        server_name localhost;
        access_log /var/log/nginx/localhost.access.log;
        location / {
            root html;
            index index.html index.htm;
        }
    }
}
```

## How to run docker-nginx

```sh
docker run -it --rm --name="nginx-srv" \
    -v ${NGINX_DIR%%/}/etc/nginx/:/etc/nginx/ \
    -v ${NGINX_DIR%%/}/var/log/nginx:/var/log/nginx \
    -v ${NGINX_DIR%%/}/var/www/html:/var/www/html \
    -v ${NGINX_DIR%%/}/var/lib/nginx:/var/lib/nginx \
    -v ${NGINX_DIR%%/}/run/nginx/:/run/nginx \
    -p 8080:8080 \
    nginx:stable \
    /run-as.sh ${USER} ${UID} nginx
```
or 
```sh
docker run -d --name="nginx-srv" \
    -v ${NGINX_DIR%%/}/etc/nginx/:/etc/nginx/ \
    -v ${NGINX_DIR%%/}/var/log/nginx:/var/log/nginx \
    -v ${NGINX_DIR%%/}/var/www/html:/var/www/html \
    -v ${NGINX_DIR%%/}/var/lib/nginx:/var/lib/nginx \
    -v ${NGINX_DIR%%/}/run/nginx/:/run/nginx \
    -p 8080:8080 \
    nginx:stable \
    /run-as.sh ${USER} ${UID} nginx
```
