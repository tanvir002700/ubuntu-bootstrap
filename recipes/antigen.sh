#!/usr/bin/env bash

install_antigen() {
    if [ -d ~/.antigen ]; then
        echo "=======> antigen already installed <======="
    else
        echo "------->> installing antigen <<------"
        curl -L git.io/antigen > ~/.antigen.zsh
    fi
}
