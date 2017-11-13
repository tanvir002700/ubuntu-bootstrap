#!/usr/bin/env bash

mkdir ~/.zsh &> /dev/null
CURRENT_DIR="$(pwd)"
cp $CURRENT_DIR/*.zsh ~/.zsh
cp $CURRENT_DIR/zshrc ~/.zshrc
