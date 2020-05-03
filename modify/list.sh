#!/bin/sh

ls -1 ~/Documents/nucleardata/IAEA/g-iaea-pd-2019 > filelist.dat
while read line
do
~/Dropbox/codes/DeCE/tools/deceheader ~/Documents/nucleardata/IAEA/g-iaea-pd-2019/$line
done < filelist.dat 
