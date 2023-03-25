#!/bin/bash

LIBDIR=build

mkdir -p $LIBDIR

cp build/*.so $LIBDIR

make
zip -r build.zip omni lib/*.so res lvl player omni.py catch_out.py lvl_spec.json stat.json installscript.vdf Makefile
