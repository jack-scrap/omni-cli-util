#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

cp $1/omni .
mkdir -p lib
cp $1/lib/*.so lib
cp -r $1/dep .
cp $1/stat.json $1/lvl_spec.json .
cp $1/omni.py $1/catch_out.py .
