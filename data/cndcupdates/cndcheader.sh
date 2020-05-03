#!/bin/sh

# ENDF-6 formatted header modification for the JENDL update srecieved from N.Iwamoto(JAEA)
# S.Okumura, March 2020

CODEPATH=/Users/okumuras/Dropbox/codes/DeCE/tools
INPATH=.
OUTPATH=mod
HEADFILE=header.dat
NLIBFILE=nlib.dat


ls -1 ${INPATH} | grep ^g_ | sort -k2g -t "_" > filelist.dat

while read line
do
#    if [[ $line =~ "Pt" ]]; then
    echo $line
    ${CODEPATH}/deceheader -d ${HEADFILE} ${INPATH}/$line > ${OUTPATH}/${line}.header

    
    # for the EDATE format check, if lower case, correct to capital case
    ${CODEPATH}/deceheader ${INPATH}/$line | while IFS="	" read -r ZSYMAM ALAB AUTH REFER EDATE DDATE RDATE ENDATE LIBNAME SUBLIB FORMA			   
	do
            # echo $ZSYMAM $ALAB $AUTH $REFER $EDATE $DDATE $RDATE $ENDATE $LIBNAME $SUBLIB $FORMA
	    # echo $ZSYMAM  $EDATE
	      if echo ${EDATE} | grep -q "[a-z]"; then
		  Edate=`echo ${EDATE} | tr a-z A-Z`
		  echo "   EDATE:${Edate}" > edate.dat
		  ${CODEPATH}/deceheader -d edate.dat ${OUTPATH}/${line}.header > ${OUTPATH}/${line}.edate
		  mv ${OUTPATH}/${line}.edate ${OUTPATH}/${line}.header
	      fi
	done

    # NLIB number update from JENDL:6 to IAEA/PD:38
    dece -o ${OUTPATH}/${line}.nlib ${OUTPATH}/${line}.header < $NLIBFILE
    mv ${OUTPATH}/${line}.nlib ${OUTPATH}/${line}
    rm ${OUTPATH}/${line}.header
#   fi
done < filelist.dat


