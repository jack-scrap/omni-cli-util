#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Error: Wrong number of arguments"

	exit 2
fi

FLOOR=$1;
ROOF=$2;

I=$FLOOR
while [ "$I" -le $(($ROOF)) ]; do
	TARG="$I.json";
	DEST="$(($I - 1)).json";

	mv $TARG $DEST;

	I=$(($I + 1));
done
