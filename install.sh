#!/usr/bin/env bash

SCRIPT_ROOT="$(pwd)"

RECIPES_PATH="${SCRIPT_ROOT}/recipes"
ALL_RECIPES="${RECIPES_PATH}/*"

for file in $ALL_RECIPES; do
	source $file
done