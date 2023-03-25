#!/bin/bash

LIBDIR=build

make
zip -r build.zip omni $LIBDIR/*.so res lvl player/cfg player/doc omni.py catch_out.py lvl_spec.json stat.json installscript.vdf
