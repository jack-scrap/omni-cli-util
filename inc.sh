#!/bin/bash

FLOOR=$1;
ROOF=$2;

I=$ROOF
while [ "$I" -gt $(($FLOOR)) ]; do
	TARG="$I.json";
	DEST="$(($I + 1)).json";

	mv $TARG $DEST;

	I=$(($I - 1));
done
