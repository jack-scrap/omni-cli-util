#!/bin/bash

LIBDIR=build

rm build_linux.zip

make
zip -r build_linux.zip omni $LIBDIR/*.so res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json installscript.vdf
