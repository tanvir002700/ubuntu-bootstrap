#!/usr/bin/env bash

source ./dependencies.sh
source ./recipes/neovim.sh

SCRIPT_ROOT="$(pwd)"

#source ./dependencies.sh


install() {
    echo "bootstrap ubuntu...."
    install_dependencies
    install_neovim
}

install

#for file in $ALL_RECIPES; do
#	source $file
#done

#source ./dotfiles_install.sh
