#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

AR=build_linux.zip

rm -f $AR

git checkout master
git pull $1 master
make
zip -r $AR omni build/*.so dep res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json installscript.vdf
