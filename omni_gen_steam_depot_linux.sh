#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

LIBDIR=build

rm build_linux.zip

git pull $1
make
zip -r build_linux.zip omni $LIBDIR/*.so res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json installscript.vdf
