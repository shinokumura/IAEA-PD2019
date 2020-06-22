#!/bin/sh

mkdir -p ../data/nvermod


for file in `ls -1 ../data/g-iaea-pd-2019/*.dat | sort -k2g -t "_"`; do
    filename=`echo ${file} | sed -e "s/.*\///g"`
    dece -o ../data/nvermod/${filename} ${file} < nver.dat
done


