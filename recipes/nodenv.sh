#!/usr/bin/env bash

if [ -d ~/.nodenv ]; then
    echo "=======> nodenv already installed <======="
else
    echo "------->> installing nodenv <<------"

    git clone https://github.com/nodenv/nodenv.git ~/.nodenv
    pushd ~/.nodenv && src/configure && make -C src
    popd
    mkdir -p ~/.nodenv/plugins
    pushd ~/.nodenv/plugins
    git clone https://github.com/nodenv/node-build.git
    git clone https://github.com/nodenv/nodenv-default-packages.git
    popd
    touch ~/.nodenv/default-packages
fi
