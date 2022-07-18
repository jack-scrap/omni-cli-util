#!/bin/bash

find . -type f -name '*.json' | xargs /usr/local/bin/fmtLvl.sh
