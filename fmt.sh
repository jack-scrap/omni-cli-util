#!/bin/bash

jq '.' $1 > /tmp/f.json;
mv /tmp/f.json $1;
