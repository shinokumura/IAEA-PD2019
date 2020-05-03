#!/bin/bash

CODEPATH=/Users/nds_user/codes/DeCE/tools/
LISTNAME=headerlist.csv

INPATH=/Users/nds_user/working/iaea-photonuclear-2019/data/g-iaea-pd-2019
OUTPATH=/Users/nds_user/working/iaea-photonuclear-2019/modify/headerlist

# specify input and output directory path

#read -p "Select the input directory path > " -e INPATH
#read -p "Select the output directory path > " -e OUTPATH

echo -e "ZSYMAM\tALAB\tAUTH\tREFER\tEDATE\tDDATE\tRDATE\tENDATE\tLIBNAME\tSUBLIB\tFORMAT" > ${OUTPATH}/${LISTNAME}

ls -1 ${INPATH} |
grep ^g_ |
sort -k2g -t "_" |
while read filename
do
 ${CODEPATH}/deceheader ${INPATH}/${filename} 2>&1 1>> ${OUTPATH}/${LISTNAME} |
 sed -e "s/Provided ENDF file/’${filename}'/" | tee -a ${OUTPATH}/${LISTNAME}
done
