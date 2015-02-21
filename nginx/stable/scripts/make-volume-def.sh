#!/bin/bash
#
#	make def volume structure
#

ROOT_PATH=${1:-}
[ -z ${ROOT_PATH} ] && {
	echo "Error! The root path is not defined"
	exit 1
}

mkdir -p ${ROOT_PATH%%/}/etc/nginx/
mkdir -p ${ROOT_PATH%%/}/etc/nginx/certs/
mkdir -p ${ROOT_PATH%%/}/etc/nginx/conf.d/
mkdir -p ${ROOT_PATH%%/}/etc/nginx/sites-enabled/

mkdir -p ${ROOT_PATH%%/}/var/log/nginx/
mkdir -p ${ROOT_PATH%%/}/var/www/html/
mkdir -p ${ROOT_PATH%%/}/var/lib/nginx/body/

mkdir -p ${ROOT_PATH%%/}/run/nginx/
