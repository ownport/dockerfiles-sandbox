# dockerfiles/mariadb/5.5

## Base Docker Image

- ubuntu:trusty

## Dockerfile reference

- [tutumcloud/tutum-docker-mariadb](https://github.com/tutumcloud/tutum-docker-mariadb/tree/master/5.5)

## Usage

Run mysqld-safe

    docker run -d --name "${CONTAINER_NAME}" -p ${IP_ADDR_PORT}:3306 \
        -v ${VOLUME_PATH%%/}/etc-mysql/:/etc/mysql \
        -v ${VOLUME_PATH%%/}/var-lib-mysql/:/var/lib/mysql \
        -v ${VOLUME_PATH%%/}/var-log-mysql/:/var/log/mysql \
        -v ${VOLUME_PATH%%/}/var-run-mysqld/:/var/run/mysqld \
        mariadb:5.5 /run-as.sh ${USER} ${UID} 


