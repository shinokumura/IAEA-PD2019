#!/bin/sh
#

#read -p "Select the input directory path > " -e INPATH
#read -p "Select the output directory path > " -e OUTPATH

INPATH=../data/g-iaea-pd-2019
OUTPATH=.

NJOY=/Users/okumuras/Documents/codes/NJOY2016pn/bin/njoy

ACE=${OUTPATH}/ace
IOACE=${OUTPATH}/inout-ace
INP=${IOACE}/input
OUP=${IOACE}/output
GRAPHS=${OUTPATH}/graphs

mkdir -p ${ACE} ${IOACE} ${INP} ${OUP} ${GRAPHS}

ls -1 ${INPATH} |
grep g_ |
sed -e "s/g_//" -e "s/[_-]/ /g" -e "s/\.[^.]*$//g" |
sort -k1g > iso-mat.iaea-g19

while IFS=" " read -r charge elem mass mat
do
    file="${INPATH}/g_${charge}-${elem}-${mass}_${mat}.dat"
    echo
    echo "${file}"
    ln -s "${file}" tape20
    echo 'running njoy for '${elem}${mass}

cat > ${INP}/in${elem}${mass} << EOF
moder
20 21/
acer
20 21 0 31 32/
5 1 1/
'Ace ${elem}${mass} IAEA-PD'/
$mat/
acer
0 31 33 34 36/
7 1 1 -1/
'Ace ${elem}${mass} IAEA-PD2019'/
viewr
33 36/
stop
EOF
      $NJOY < ${INP}/in${elem}${mass}
      echo 'saving output, pendf, gendf files'
      mv tape31 ${ACE}/${elem}${mass}
      mv tape32 ${ACE}/${elem}${mass}.dir
      mv tape36 ${GRAPHS}/${elem}${mass}chk.ps
      mv output ${OUP}/out${elem}${mass}
      rm tape*
      echo 'finished' ${elem}${mass}

done < iso-mat.iaea-g19
