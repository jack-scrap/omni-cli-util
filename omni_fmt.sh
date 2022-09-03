#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

jq '.' $1 > /tmp/f.json;
mv /tmp/f.json $1;
