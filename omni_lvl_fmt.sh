#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

F=$1.json
TMP=tmp.json

cat $F | jq '.' > $TMP
mv $TMP $F
