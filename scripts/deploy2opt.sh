#!/bin/sh

SOURCE_URL=${1}     # http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz
WGET_OPTIONS=${2}   # --header "Cookie: oraclelicense=accept-securebackup-cookie"

usage() {
    echo  "usage: $0 <SOURCE_URL> <WGET_OPTIONS>"
}


[ -z ${SOURCE_URL} ] && {
    echo "Error! Source URL is not defined" 2>&1
    usage
    exit 1
}

FILENAME=$(basename ${SOURCE_URL}) # getting jdk-7u71-linux-x64.tar.gz
[ -z ${FILENAME} ] && {
    echo "Error! Filename is not defined" 2>&1
    usage
    exit 1
}

TMP_DIR=/tmp/${FILENAME%.*}/    # getting /tmp/jdk-7u71-linux-x64.tar/
[ -z ${TMP_DIR} ] && {
    echo "Error! Temporary directory is not defined" 2>&1
    usage
    exit 1
}

echo "========================================================="
echo "Source URL            :  ${SOURCE_URL}"
echo "Filename              :  ${FILENAME}"
echo "Temporary directory   :  ${TMP_DIR}"
echo "wget options          :  ${WGET_OPTIONS}"
echo "---------------------------------------------------------"

eval wget -c --progress=dot:mega --no-check-certificate --no-cookies ${WGET_OPTIONS} ${SOURCE_URL} -O /tmp/${FILENAME} && \
    mkdir ${TMP_DIR} && \
    echo "- Extracting ${FILENAME} to ${TMP_DIR} ... " && \
    tar xzf /tmp/${FILENAME} -C ${TMP_DIR} && \
    echo "- Extracting ${FILENAME} to ${TMP_DIR} completed" && \
    rm /tmp/${FILENAME} && \
    echo "- Copying files to /opt ..." && \
    mv ${TMP_DIR%%/}* /opt && \
    rmdir ${TMP_DIR} && \
    echo "- Deployment completed"

