#!/bin/sh

mkdir -p ../data/nlibmod

COUNT=0

for file in `ls -1 ../data/g-iaea-pd-2019/*.dat | sort -k2g -t "_"`; do
  nlib=`sed -n 2p ${file} | cut -c 54-55`
  if [ ${nlib} != 38 ]; then
    filename=`echo ${file} | sed -e "s/.*\///g"`
    echo "\n${filename}"
    echo "Modified NLIB : ${nlib} >>> 38\n"
    dece -o ../data/nlibmod/${filename} ${file} < nlib.dat
    COUNT=$(( COUNT + 1 ))
  fi
done

echo "\n--- Modified files : ${COUNT} ----------\n"

if [ -z "`ls ../data/nlibmod`" ]; then rm -r ../data/nlibmod; fi
