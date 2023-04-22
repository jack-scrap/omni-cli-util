#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

LIBDIR=build

rm -f build_linux.zip

git checkout master
git pull $1 master
make
zip -r build_linux.zip omni $LIBDIR/*.so dep res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json installscript.vdf
