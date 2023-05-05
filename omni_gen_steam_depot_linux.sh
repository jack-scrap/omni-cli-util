#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

git checkout master
git pull $1

make clean
make
