#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

steamcmd +login $2 $3 +run_app_build $1/scripts/app_build_2329020.vdf +quit
