#!/bin/sh
################################################################################
#    by S.Okumura March 2020 for JENDL updates
################################################################################

CODEPATH=/Users/okumuras/Dropbox/codes/DeCE/tools
MODPATH=../../iaea-photonuclear-2019/modify
INPATH=jendlrenames/
OUTPATH=.

ls -1 jendlrenames

${CODEPATH}/deceheader -d ${MODPATH}/header.dat  ${INPATH}/${filename} > ${MOD}/${filename}.header
${CODEPATH}/deceheader -d ${TEMP}/edate.tmp  ${TEMP}/${filename}.header >| ${TEMP}/${filename}.edate
      mv ${TEMP}/${filename}.edate ${TEMP}/${filename}.tmp
      echo "\nModified EDATE : ${edate} >>> ${Edate}" | tee -a ${TEMP}/${name}-log.tmp
      cnum=$(( cnum+1 ))
  fi

# NLIB number updates
  nlib=`sed -n 2p ${TEMP}/${filename}.tmp | cut -c 54-55`
  if [ ${nlib} != 38 ]; then
    dece -o ${TEMP}/${filename}.nlib ${TEMP}/${filename}.tmp < ${MODPATH}/nlib.dat
    mv ${TEMP}/${filename}.nlib ${TEMP}/${filename}.tmp
    echo "\nModified NLIB : ${nlib} >>> 38" | tee -a ${TEMP}/${name}-log.tmp
    cnum=$(( cnum+1 ))
  fi

   dece -q -o ${MOD}/${filename} ${TEMP}/${filename}.tmp




