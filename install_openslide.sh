#!/bin/bash
cd openslide

libtoolize
aclocal
autoheader
autoconf
automake --add-missing

./configure
make
make install