#!/usr/bin/env bash

source ./dependencies.sh
source ./recipes/neovim.sh
source ./recipes/antigen.sh
source ./recipes/docker.sh
source ./recipes/docker-compose.sh
source ./recipes/mysql.sh
source ./recipes/postgresql.sh
source ./recipes/nodenv.sh
source ./recipes/pyenv.sh
source ./recipes/rbenv.sh
source ./recipes/sdkman.sh
source ./recipes/tmux.sh
source ./recipes/virtualbox.sh
source ./recipes/vagrant.sh
source ./recipes/zsh.sh

SCRIPT_ROOT="$(pwd)"

install() {
    echo "bootstrap ubuntu...."
    install_dependencies
    install_antigen
    install_neovim
    install_docker
    install_docker_compose
    install_mysql
    install_postgresql
    install_neovim
    install_pyenv
    install_rbenv
    install_sdkman
    install_tmux
    install_virtualbox
    install_vagrant
    install_zsh
}

install

source ./dotfiles_install.sh
