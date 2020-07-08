#!/bin/bash
#

# ls -1 ../g-iaea-pd-2019/ | sed -e "s/_/ /g" | sed -e "s/-/ /g" | sed -e 's/.dat//g'| awk '{printf("%s  %s  %s  %4s\n", $2,$3,$4,$5)}' | sort -k1g > iso-mat.iaea-g19

while IFS=" " read -r charge elem mass mat
do

    file="../data/g-iaea-pd-2019/g_"$charge"-"$elem"-"$mass"_"$mat".dat"
    echo "$file"
    dece -s  $file > temp/"$charge"-"$elem"-"$mass".dat
    
done < ../processing/iso-mat.iaea-g19
