#!/bin/sh

for p in source/*.rste; do
    BASE=$(basename $p .rste)
    mv -f $p source/$BASE.rst
done

