#!/usr/bin/env bash

install_pyenv() {
    if [ -d ~/.pyenv ]; then
        echo "=======> pyenv already installed <======="
    else
        echo "------->> installing pyenv <<------"
        git clone https://github.com/pyenv/pyenv.git ~/.pyenv
        mkdir -p ~/.pyenv/plugins
        pushd ~/.pyenv/plugins
        git clone https://github.com/pyenv/pyenv-ccache.git
        git clone https://github.com/pyenv/pyenv-version-ext.git
        popd
    fi
}
