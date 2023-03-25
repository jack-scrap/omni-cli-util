#!/bin/bash

mkdir -p build

cp build/*.so build

make
zip build.zip omni lib/*.so res lvl player omni.py catch_out.py lvl_spec.json stat.json InstallScript.vdf Makefile
