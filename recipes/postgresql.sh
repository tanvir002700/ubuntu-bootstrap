#!/usr/bin/env bash

install_postgresql() {
    release_name=`lsb_release -csu 2> /dev/null || lsb_release -cs 2> /dev/null`
    [[ "$release_name" = "" ]] && release_name="xenial"

    if [[ -f /etc/apt/sources.list.d/virtualbox.list ]]; then
        echo "=======> PPA already added. Skipping <======="
    else
        echo "-------> Adding virtualbox ppa <-------"
        echo  "deb http://apt.postgresql.org/pub/repos/apt ${release_name} -pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
        wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
        sudo apt-get update -y
    fi

    if which psql > /dev/null; then
        echo "=======> postgresql already installed <======="
    else
        echo "-------> Installing postgresql <-------"
        sudo apt-get install postgresql postgresql-contrib -y --force-yes
    fi
}
