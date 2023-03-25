#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

TMP=tmp.json

mv $1.json $TMP
mv $2.json $1.json
mv $TMP $2.json
