#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

LIBDIR=build

rm -f build_linux.zip

git checkout master
git pull $1 -b master
make
zip -r build_linux.zip omni $LIBDIR/*.so res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json dep installscript.vdf
