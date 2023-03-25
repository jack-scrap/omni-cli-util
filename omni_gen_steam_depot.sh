#!/bin/bash

mkdir -p lib

cp build/*.so lib

make
zip build.zip omni lib/*.so res lvl player omni.py catch_out.py lvl_spec.json stat.json InstallScript.vdf Makefile
