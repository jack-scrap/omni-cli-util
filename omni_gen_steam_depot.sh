#!/bin/bash

LIBDIR=build

make
zip -r build.zip omni $LIBDIR/*.so res lvl player omni.py catch_out.py lvl_spec.json stat.json installscript.vdf Makefile
