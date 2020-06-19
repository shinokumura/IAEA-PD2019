#!/bin/bash

CODEPATH=/Users/okumuras/Dropbox/codes/DeCE/tools/
LISTNAME=headerlist.tsv

INPATH=../data/g-iaea-pd-2019

# specify input and output directory path

#read -p "Select the input directory path > " -e INPATH
#read -p "Select the output directory path > " -e OUTPATH

echo  "ZSYMAM\tALAB\tAUTH\tREFER\tEDATE\tDDATE\tRDATE\tENDATE\tLIBNAME\tSUBLIB\tFORMAT" > ${LISTNAME}

ls -1 ${INPATH} |
grep ^g_ |
sort -k2g -t "_" |
while read filename
do
    ${CODEPATH}/deceheader ${INPATH}/${filename} >> ${LISTNAME}
    #|
 # sed -e "s/Provided ENDF file/’${filename}'/" | tee -a ${LISTNAME}
done
