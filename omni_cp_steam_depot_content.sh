#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

CONTENT_ROOT=content

INSTALL_SCRIPT=installscript_linux.vdf 

find content -type f ! -name $INSTALL_SCRIPT -delete

cp $1/omni $CONTENT_ROOT
mkdir -p $CONTENT_ROOT/lib
cp $1/lib/*.so $CONTENT_ROOT/lib
cp -r $1/dep $CONTENT_ROOT
cp $1/stat.json $1/lvl_spec.json $CONTENT_ROOT
cp $1/omni.py $1/catch_out.py $CONTENT_ROOT
