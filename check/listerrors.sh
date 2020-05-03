#!/bin/sh

CODEPATH=/Users/nds_user/codes/DeCE/tools/
DATAPATH=/Users/nds_user/working/iaea-photonuclear-2019/data/g-iaea-pd-2019
INPATH=/Users/nds_user/working/iaea-photonuclear-2019/check/output

#read -p "Select the input directory path > " -e INPATH


ls -1 ${DATAPATH} > filelist.tmp

date '+%d-%b-%Y %H:%M' > errorlist.csv


for dirname in checkr fizcon
do

DIRNAME=`echo ${dirname} | tr a-z A-Z`
echo "\n--- Errors of ${DIRNAME} ---------------------------------------"


grep error ${INPATH}/${dirname}/* | sed -E "s/.*\///g" | sort -g |
awk -v CODEPATH="${CODEPATH}" -v DATAPATH="${DATAPATH}" -v INPATH="${INPATH}" '

BEGIN { num=0 }

function ret_recs(zname) {
    cmd=" grep "zname" ./filelist.tmp"
    cmd | getline filename
    close(cmd)

    hiroheader=" "CODEPATH"/hiroheader "DATAPATH"/"filename" "
    hiroheader | getline rlist
    close(hiroheader)

    split( rlist , recs, ";" )

    return recs[2]
}

{
  gsub( /\..*$/, "", $1 )
  $2=ret_recs($1)
  gsub( ",", "", $4 )
  printf "%-10s\t%-10s\t%3s %-s\t%3s %-s\n" ,$1,$2,$3,$4,$5,$6
  num++
}

END {
  print "------------------------------------------------------------"
  if(num == 0) {
    printf "No errors\n"
  } else{
    printf "Errors in %d files\n\n" ,num
  }
}
'

done | tee -a errorlist.csv


rm ./*tmp
