#!/bin/sh

# modification for the evaluation files from Romania

for i in "g_27-Co-59_2725.dat" "g_39-Y-89_3925.dat" "g_45-Rh-103_4525.dat" "g_65-Tb-159_6525.dat" "g_67-Ho-165_6725.dat" "g_69-Tm-169_6925.dat" "g_73-Ta-181_7328.dat"

do
    echo $i
    ~/Dropbox/codes/DeCE/tools/deceheader -d romania.dat ~/Documents/nucleardata/IAEA/g-iaea-pd-2019/$i > $i
done
    

# modification for all files

ls -1 ~/Documents/nucleardata/IAEA/g-iaea-pd-2019 > filelist.dat
while read line
do
~/Dropbox/codes/DeCE/tools/deceheader -d header.dat ~/Documents/nucleardata/IAEA/g-iaea-pd-2019/$line > $line
done < filelist.dat 

