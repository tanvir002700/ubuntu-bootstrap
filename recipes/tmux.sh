#!/usr/bin/env bash

if which tmux > /dev/null; then
  echo "=======> tmux already installed. <======="
else
	sudo apt-get install tmux
	touch ~/.tmux.conf  
fi