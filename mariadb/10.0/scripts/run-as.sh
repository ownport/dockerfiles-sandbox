#!/bin/bash
#
#   run script from specific user
#   usage: ./run-as.sh <USERNAME> <USERID> <CMD>
#
#   based on http://www.yegor256.com/2014/08/29/docker-non-root.html
#
USERNAME=${1:-docker}
USERID=${2:-1000}

prepare() {
    echo "[INFO] Prepare user: ${USERNAME}/${USERID}"
    adduser --disabled-password --gecos '' --uid ${USERID} ${USERNAME}
    adduser ${USERNAME} sudo
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
}

create_maria_db_user() {

    echo '[INFO] Starting MariaDB ...'
    /usr/bin/mysqld_safe --user=${USERNAME} > /dev/null 2>&1 &

    RET=1
    while [[ RET -ne 0 ]]; do
        echo "[INFO] Waiting for confirmation of MariaDB service startup"
        sleep 5
        mysql -uroot -e "status" > /dev/null 2>&1
        RET=$?
    done

    PASS=${MARIADB_PASS:-$(pwgen -s 12 1)}
    _word=$( [ ${MARIADB_PASS} ] && echo "preset" || echo "random" )
    echo "[INFO] Creating MariaDB admin user with ${_word} password"

    mysql -uroot -e "CREATE USER 'admin'@'%' IDENTIFIED BY '$PASS'"
    mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION"

    echo "[INFO] MariaDB username: admin, password: ${PASS} created"

    mysqladmin -uroot shutdown
}

prepare

VOLUME_HOME="/var/lib/mysql"

if [[ ! -d $VOLUME_HOME/mysql ]]; then
    echo "[INFO] An empty or uninitialized MariaDB volume is detected in $VOLUME_HOME"
    echo "[INFO] Installing MariaDB ..."
    if mysql_install_db --user=${USERNAME} > /dev/null 2>&1;
    then
        echo "[INFO] Installation completed"
        create_maria_db_user
    else
        echo '[ERROR] Installation MariaDB was failed'
        exit 1
    fi 
else
    echo "[INFO] Using an existing volume of MariaDB"
fi

exec mysqld_safe --user=${USERNAME}

