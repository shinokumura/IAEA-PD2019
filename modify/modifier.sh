#!/bin/sh

################################################################################
#   Unified some header records
#   Correct EDATE to uppercase letters
#   Leave logs
#
#   This program is a script to run the DeCE codes employed by Mr. Kawano on
#   ENDF format files in specified directory and to check the modifications and
#   
################################################################################


SECONDS=0

CODEPATH=/Users/nds_user/codes/DeCE/tools
MODPATH=/Users/nds_user/working/iaea-photonuclear-2019/modify

# forbit overwits
set -C

######
# specify input and output directory path
######

read -p "Select the input directory path > " -e INPATH
read -p "Select the output directory path > " -e OUTPATH


# create directories for output files
TEMP=${OUTPATH}/temp
MOD=${OUTPATH}/mod
LOG=${MODPATH}/log

mkdir -p ${TEMP} ${MOD} #${LOG}

# create the log file and leave some imformation
DATE=`date '+%d-%b-%Y-%H%M'`
LOGFILE=${LOG}/${DATE}.log

echo "Run at `date '+%T on %d-%b-%Y (%a)'`\n" >| ${LOGFILE}
echo "Input directory path : ${INPATH}" >> ${LOGFILE}
echo "Output directory path : ${OUTPATH}" >> ${LOGFILE}



RAB=(ZSYMAM AUTH ALAB REFER EDATE DDATE RDATE ENDATE LIBNAME SUBLIB FORMAT)

for i in `seq 0 10`
do
  if grep -q ${RAB[$i]} ${MODPATH}/header.dat; then
    REC[$i]=`
    awk -F ":" '/'${RAB[$i]}'/{print $2}' ${MODPATH}/header.dat
    `
    idx+=("$i")
  fi
done



count=0

ls -1 ${INPATH} |
grep ^g_ |
sort -k2g -t "_" |
while read filename
do

  rlist=`${CODEPATH}/hiroheader ${INPATH}/${filename}`

  IFS_DEF=${IFS}
  IFS=";"
  read -ra rec <<< "${rlist}"
  IFS=${IFS_DEF}

  name=`echo ${rec[0]} | sed "s/ //g"`
  echo "\n***** ${name} *********************************************" | tee ${TEMP}/${name}-log.tmp


  cnum=0

  for i in ${idx[@]}
  do
    rcd=${rec[$i]}
    RCD=${REC[$i]}
    RBL=${RAB[$i]}
    echo "${rcd}" | grep -q "\s\{3,\}" && rcd=
    if [ "${rcd}" != "${RCD}" ]; then
      echo "Modified ${RBL} : ${rcd} >>> ${RCD} " | tee -a ${TEMP}/${name}-log.tmp
      cnum=$(( cnum+1 ))
    fi
  done



  cp ${INPATH}/${filename} ${TEMP}/${filename}.tmp

  if [ ${cnum} -ge 1 ]; then
      ${CODEPATH}/deceheader -d ${MODPATH}/header.dat  ${TEMP}/${filename}.tmp > ${TEMP}/${filename}.header
      mv ${TEMP}/${filename}.header ${TEMP}/${filename}.tmp
  fi



  edate=${rec[4]}
  if echo ${edate} | grep -q "[a-z]"; then
      Edate=`echo ${edate} | tr a-z A-Z`
      echo "   EDATE:${Edate}" >| ${TEMP}/edate.tmp
      ${CODEPATH}/deceheader -d ${TEMP}/edate.tmp  ${TEMP}/${filename}.tmp >| ${TEMP}/${filename}.edate
      mv ${TEMP}/${filename}.edate ${TEMP}/${filename}.tmp
      echo "\nModified EDATE : ${edate} >>> ${Edate}" | tee -a ${TEMP}/${name}-log.tmp
      cnum=$(( cnum+1 ))
  fi



  nlib=`sed -n 2p ${TEMP}/${filename}.tmp | cut -c 54-55`
  if [ ${nlib} != 38 ]; then
    dece -o ${TEMP}/${filename}.nlib ${TEMP}/${filename}.tmp < ${MODPATH}/nlib.dat
    mv ${TEMP}/${filename}.nlib ${TEMP}/${filename}.tmp
    echo "\nModified NLIB : ${nlib} >>> 38" | tee -a ${TEMP}/${name}-log.tmp
    cnum=$(( cnum+1 ))
  fi



   dece -q -o ${MOD}/${filename} ${TEMP}/${filename}.tmp
   #echo "\nCorrect the total line number" >> ${TEMP}/${name}-log.tmp



   if [ ${cnum} -ge 1 ]; then
     cat "${TEMP}/${name}-log.tmp" >> ${LOGFILE}
     count=$(( count+1 ))
     echo ${count} >| count.tmp
   else
     echo "\nNo modifications"
   fi

   rm ${TEMP}/*.tmp

done



echo "\n------------------------------------------------------------" | tee -a ${LOGFILE}

if [ -e count.tmp ]; then
  echo "$(cat count.tmp) files were modified" | tee -a ${LOGFILE}
else
  echo "No modifications" | tee -a ${LOGFILE}
fi

rm -fr ${TEMP} count.tmp

TIME=${SECONDS}
echo "Processing time : ${SECONDS} sec\n" | tee -a ${LOGFILE}
