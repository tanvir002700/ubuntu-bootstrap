#!/usr/bin/env bash
if [ -d ~/.antigen ]; then
	echo "=======> antigen already installed <======="
else
	echo "------->> installing antigen <<------"
  	curl -L git.io/antigen > ~/.antigen.zsh
fi
