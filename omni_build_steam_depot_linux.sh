#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

steamcmd +login anonymous +run_app_build $1/scripts/app_build_2329020.vdf
