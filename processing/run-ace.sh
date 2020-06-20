#!/bin/bash
#

# ls -1 ../g-iaea-pd-2019/ | sed -e "s/_/ /g" | sed -e "s/-/ /g" | sed -e 's/.dat//g'| awk '{printf("%s  %s  %s  %4s\n", $2,$3,$4,$5)}' | sort -k1g > iso-mat.iaea-g19

NJOY=/Users/okumuras/Documents/codes/NJOY2016pn/bin/njoy

while IFS=" " read -r charge elem mass mat
do
#if [ $elem = "Rh" ]; then
    file="../data/g-iaea-pd-2019/g_"$charge"-"$elem"-"$mass"_"$mat".dat"
    echo
    echo "$file"
    ln -s $file tape20
    echo 'running njoy for '${elem}${mass}

cat > in${elem}${mass} << EOF
moder
20 21/
acer
20 21 0 31 32/
5 1 1/
'Ace ${elem}${mass} IAEA-PD'/
$mat/
stop
EOF

    $NJOY < in${elem}${mass}
    echo 'saving output, pendf, gendf files'
    mv tape31 ace/${elem}${mass}
    mv tape32 ace/${elem}${mass}.dir
 #   mv tape35 graphs/${elem}${mass}chk.ps
    mv output inout-ace/out${elem}${mass}
    mv in${elem}${mass} inout-ace/in${elem}${mass}
    rm tape*
    echo 'finished' ${elem}${mass}
#fi

done < iso-mat.iaea-g19
