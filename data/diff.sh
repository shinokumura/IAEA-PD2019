#!/bin/sh

#read -p "Directory 1 > " -e DIR1
#read -p "Directory 2 > " -e DIR2

DIR1=./g-iaea-pd-2019
DIR2=./mod

diff -rq ${DIR1} ${DIR2} | sed "s/.*\///g"
