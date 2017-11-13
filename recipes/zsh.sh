#!/usr/bin/env bash

if which zsh > /dev/null; then
  echo "=======> zsh already installed. <======="
else
  echo "------->> Installing zsh <<-------"
  sudo apt-get install -y --allow zsh
  chsh -s $(which zsh)
fi