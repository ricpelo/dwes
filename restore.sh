#!/bin/sh

for p in *.rste; do
    BASE=$(basename $p .rste)
    mv -f $p $BASE.rst
done

