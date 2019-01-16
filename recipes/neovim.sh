#/usr/bin/env bash

SCRIPT_ROOT="$(pwd)"

install_neovim() {
    echo "Install neovim...."
    "$SCRIPT_ROOT/recipes/vim-pack/install.sh"
}
