#!/usr/bin/env bash

install_zsh() {
    if which zsh > /dev/null; then
        echo "=======> zsh already installed. <======="
        else
        echo "------->> Installing zsh <<-------"
        sudo apt-get install -y --force-yes zsh
        chsh -s $(which zsh)
    fi
}
