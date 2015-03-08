#!/bin/bash
#
#	run script from specific user
# 	usage: ./run-as.sh <USERNAME> <USERID> <CMD>
#
#	based on http://www.yegor256.com/2014/08/29/docker-non-root.html
#
USERNAME=${1:-docker}
USERID=${2:-1000}
CMD=${3:-/bin/bash}

echo "Prepare to run '${CMD}' from user: ${USERNAME}/${USERID}"
adduser --disabled-password --gecos '' --uid ${USERID} ${USERNAME}
adduser ${USERNAME} sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
sudo -u ${USERNAME} ${CMD} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
