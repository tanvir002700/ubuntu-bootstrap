#!/usr/bin/env bash

DOTFILES="$(pwd)/dotfiles"

echo $DOTFILES

echo -e "\ninstalling dot file"
echo "=============================="

installables=$( find $DOTFILES -name "install.sh" )
for file in $installables; do
    pushd $(dirname $file) &> /dev/null
    source $file
    popd &> /dev/null
done
