#!/bin/bash
#
#	make def volume structure
#

ROOT_PATH=${1:-}
[ -z ${ROOT_PATH} ] && {
	echo "Error! The root path is not defined"
	exit 1
}

mkdir -p ${ROOT_PATH%%/}/etc/rethinkdb/
mkdir -p ${ROOT_PATH%%/}/var/run/rethinkdb/
mkdir -p ${ROOT_PATH%%/}/var/lib/rethinkdb/default
mkdir -p ${ROOT_PATH%%/}/var/log/rethinkdb
