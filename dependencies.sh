#!/usr/bin/env bash

sudo apt-get install -y curl
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev git unzip zip
sudo apt-get install -y --force-yes build-essential checkinstall
sudo apt-get install -y --force-yes libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
sudo apt-get install python3-setuptools
sudo easy_install3 pip
sudo pip install neovim
sudo apt install -y ccache
