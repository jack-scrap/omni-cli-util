#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

CONTENT_ROOT=content

INSTALL_SCRIPT=installscript_linux.vdf 

cp $1/omni $CONTENT_ROOT
mkdir -p $CONTENT_ROOT/lib
cp $1/lib/*.so $CONTENT_ROOT/lib
cp -r $1/dep $CONTENT_ROOT
mkdir -p $CONTENT_ROOT/player
cp -r $1/player/doc $CONTENT_ROOT/player
cp -r $1/player/cfg $CONTENT_ROOT/player
mkdir -p $CONTENT_ROOT/player/script
cp -r $1/res $1/lvl $CONTENT_ROOT
cp $1/stat.json $1/lvl_spec.json $CONTENT_ROOT
cp $1/omni.py $1/catch_out.py $CONTENT_ROOT

cp $2/$INSTALL_SCRIPT $CONTENT_ROOT
