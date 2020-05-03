#!/bin/sh

##################
# run BNL cheking code
##################

CODEPATH=/Users/nds_user/codes/utility-8.2x/
#CODEPATH=~/Dropbox/codes/utility/utility-8.2x/

INPATH=../data/g-iaea-pd-2019
OUTPATH=.

######
# specify input and output directory path
######

#read -p "Select the input directory path > " -e INPATH
#read -p "Select the output directory path > " -e OUTPATH

#####
# make each output directory
##

#CHKDIR=${OUTPATH}/chks
INP=${OUTPATH}/input
OUP=${OUTPATH}/output

CHEDIR=${OUP}/checkr
FIZDIR=${OUP}/fizcon
PSYDIR=${OUP}/phyche

mkdir -p ${INP} ${OUP} ${CHEDIR} ${FIZDIR} ${PSYDIR}

######
# cycle the actions
######

ls -1 ${INPATH} |
grep ^g_ |
while read filename
do

short=`echo ${filename} | sed -E "s/g_|_.*//g"`

######
# create input file
######

cat > ${INP}/${short}.chkin << EOI
${INPATH}/${filename}
${CHEDIR}/${short}.chk

DONE
EOI

cat > ${INP}/${short}.fizin << EOI
${INPATH}/${filename}
${FIZDIR}/${short}.fiz
y

DONE
EOI

cat > ${INP}/${short}.psyin << EOI
${INPATH}/${filename}
${PSYDIR}/${short}.psy

DONE
EOI


#####
# runninig ENDF utility codes
##

${CODEPATH}checkr-new.x < ${INP}/${short}.chkin > /dev/null
${CODEPATH}fizcon < ${INP}/${short}.fizin > /dev/null
${CODEPATH}psyche < ${INP}/${short}.psyin > /dev/null

echo " '${filename}' completed "
echo

done

rm -fr ${INP}
