#!/bin/sh
################################################################################
#    by S.Okumura May 25 for EMPIRE updates
################################################################################

CODEPATH=/Users/sin/Dropbox/codes/DeCE/tools

OUTPATH=mod
HEADFILE=header.dat

#ls -1 */EMPIRE/*.endf > filelist.dat
ls -1 mod/*.endf > filelist.dat

while read line
do
    echo "file: $line"

#    ${CODEPATH}/deceheader -d ${HEADFILE} ${INPATH} > ${OUTPATH}/${filename}.header

#${CODEPATH}/deceheader -d header.dat $line > ${MOD}/${filename}.header
# ${CODEPATH}/deceheader -d ${TEMP}/edate.tmp  ${TEMP}/${filename}.header >| ${TEMP}/${filename}.edate
#      mv ${TEMP}/${filename}.edate ${TEMP}/${filename}.tmp
#      echo "\nModified EDATE : ${edate} >>> ${Edate}" | tee -a ${TEMP}/${name}-log.tmp
#      cnum=$(( cnum+1 ))

# NLIB number updates
  nlib=`sed -n 2p $line | cut -c 54-55`
  if [ ${nlib} != 38 ]; then
    dece -o $line.nlib $line < nlib.dat
    echo "\nModified NLIB : ${nlib} >>> 38"
  fi

   dece -q -o $line.dat $line

done < filelist.dat
