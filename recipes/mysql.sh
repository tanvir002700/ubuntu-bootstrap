#!/usr/bin/env bash

install_mysql() {
    if which mysql > /dev/null; then
        echo "=======> mysql already installed <======="
    else
        echo "------->> installing mysql <<------"
        sudo apt-get install mysql-server \
                            mysql-client \
                            libmysqlclient-dev -y --force-yes
    fi
}
