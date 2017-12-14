#!/usr/bin/env bash

SCRIPT_ROOT="$(pwd)"

source ./dependencies.sh

RECIPES_PATH="${SCRIPT_ROOT}/recipes"
ALL_RECIPES="${RECIPES_PATH}/*"

for file in $ALL_RECIPES; do
	source $file
done

source ./dotfiles_install.sh
