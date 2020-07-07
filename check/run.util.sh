#!/bin/sh

##################
# run BNL cheking code
##################
CODEPATH=/Users/okumuras/Documents/codes/utility/utility-8.2x/
DATAPATH=../data/g-iaea-pd-2019/

#filename=g_73-Ta-181_7328.dat


for file in `\find $DATAPATH -maxdepth 1 -type f`; do
#    filename=${file##*/}
    filename=`basename $file`
#outfile=output/jendlupdate/$filename
#outfile=output/empireupdate/$filename
outfile=output/$filename

######
# create input file
######

# cat > checkr-old.inp << EOI
# $DATAPATH$filename
# ${outfile}.checkr.old

# DONE
# EOI

cat > checkr.inp << EOI
$DATAPATH$filename
${outfile}.checkr

DONE
EOI

cat > fizcon.inp << EOI
$DATAPATH$filename
${outfile}.fizcon
y

DONE
EOI

cat > psyche.inp << EOI
$DATAPATH$filename
${outfile}.psyche

DONE
EOI

#####
# runninig ENDF utility codes
####

#echo " Running checkr for $filename "
#${CODEPATH}checkr < checkr-old.inp

echo " Running checkr for $filename "
${CODEPATH}checkr-new.x < checkr.inp

echo " Running fizcon for $filename "
${CODEPATH}fizcon < fizcon.inp

echo " Running psyche for $filename "
${CODEPATH}psyche < psyche.inp

done

rm *.inp
