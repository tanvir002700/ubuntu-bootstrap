#!/usr/bin/env bash

if [ -d ~/.rbenv ]; then
	echo "=======> rbenv already installed <======="
else
	echo "------->> installing rbenv <<------"

  	git clone git://github.com/rbenv/rbenv.git ~/.rbenv
  	pushd ~/.rbenv && src/configure && make -C src
  	popd
  	mkdir -p ~/.rbenv/plugins
  	pushd ~/.rbenv/plugins
  	git clone git://github.com/rbenv/ruby-build.git
  	git clone https://github.com/rbenv/rbenv-default-gems.git
  	popd
  	echo "bundler" | tee ~/.rbenv/default-gems
fi
