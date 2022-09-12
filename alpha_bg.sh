#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

NAME=$1

convert $1.png -transparent black $1_alpha.png
