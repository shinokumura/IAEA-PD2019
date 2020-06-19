#!/bin/bash
#
#
#
codes="/Users/okumuras/Dropbox/codes/PREPRO19/"
while IFS=" " read -r charge elem mass mat
do
#if [ $elem = "H" ]; then
    file="../data/g-iaea-pd-2019/g_"$charge"-"$elem"-"$mass"_"$mat".dat"
    echo
    echo "$file"
    ln -s $file ENDFB.IN
    ln -s $file LINEAR.IN
    echo 'running PREPRO 2019 for '${elem}${mass}
#
     ${codes}endf2c
     
# cat>EVALPLOT.INP <<EOF
#         0.0       12.5        0.0        2.0          1          1 1.5
# ENDFB.IN
#           0          0          0          0          0 1.00000-08   1
#      1 1  1    1.0E-3  99999 3999     2.0E+8          0          0
#      110  1    1.0E+3  9999910  4     2.0E+8          0          0 
#      110  5    3.0E+7  9999910  5     2.0E+8          0          0 
#      110  6    1.0E+3  9999910200     2.0E+8          0          0    
# EOF

#     ${codes}evalplot
     ${codes}evalhard1
cat>LINEAR.INP <<EOF 
          0          0 1.0000d-10          1
LINEAR.IN
LINEAR.OUT
     0 0  099999999999
                        (BLANK CARD TERMINATES MAT REQUEST RANGES)
 0.00000-00 1.00000-10
                        (BLANK CARD TERMINATES FILE 3 ERROR LAW)
EOF
     ${codes}linear
mv LINEAR.OUT SIXPAK.IN
cat>SIXPAK.INP  <<EOF
SIXPAK.IN
     1    1  9999  999
EOF
      ${codes}sixpak
cat>MERGER.INP <<EOF
MERGER.OUT
                                                                     0 0
SIXPAK.IN
ENDFB.MF9
END
000000 1  100000099999
000000 1  100000099999
                        (blank line terminate request list)
EOF
    ${codes}merger 
mv MERGER.OUT ACTIVATE.IN
cat>ACTIVATE.INP << EOF
ACTIVATE.IN
ACTIVATE.OUT
EOF
     ${codes}activate 
mv ACTIVATE.OUT MERGER.IN
cat>MERGER.INP <<EOF
MERGER.OUT
                                                                     0 0
MERGER.IN
END
000000 1  1999999 3999
00000010  199999910999
00000033  199999933999
00000040  199999940999    
                        (blank line terminate request list)
EOF
    ${codes}merger
mv MERGER.OUT DICTIN.IN
cat>DICTIN.INP <<EOF
DICTIN.IN
DICTIN.OUT
EOF
    ${codes}dictin 
cp DICTIN.OUT pendf/${elem}${mass}.asc    
mv DICTIN.OUT GROUPIE.IN
cat>GROUPIE.INP <<EOF
         0        162         0          -1 1.00000-03           0   1
GROUPIE.IN
GROUPIE.OUT
          1          1         1           1          1
Groupie CCFE-162 groups
     1 1  1  999999999
                        (blank line terminate request list)
 5.0000E+03 1.0000E+04 1.5000E+04 2.0000E+04 2.5000E+04 3.0000E+04
 3.5000E+04 4.0000E+04 4.5000E+04 5.0000E+04 5.5000E+04 6.0000E+04 
 6.5000E+04 7.0000E+04 7.5000E+04 8.0000E+04 8.5000E+04 9.0000E+04 
 9.5000E+04 1.0000E+05 1.2000E+05 1.4000E+05 1.6000E+05 1.8000E+05 
 2.0000E+05 2.2000E+05 2.4000E+05 2.6000E+05 2.8000E+05 3.0000E+05 
 3.2500E+05 3.5000E+05 3.7500E+05 4.0000E+05 4.2500E+05 4.5000E+05 
 4.7500E+05 5.0000E+05 5.2500E+05 5.5000E+05 5.7500E+05 6.0000E+05 
 6.2500E+05 6.5000E+05 6.7500E+05 7.0000E+05 7.2500E+05 7.5000E+05 
 7.7500E+05 8.0000E+05 8.2500E+05 8.5000E+05 8.7500E+05 9.0000E+05 
 9.2500E+05 9.5000E+05 9.7500E+05 1.0000E+06 1.1250E+06 1.2500E+06 
 1.3750E+06 1.5000E+06 1.6250E+06 1.7500E+06 1.8750E+06 2.0000E+06 
 2.1250E+06 2.2500E+06 2.3750E+06 2.5000E+06 2.6250E+06 2.7500E+06 
 2.8750E+06 3.0000E+06 3.1250E+06 3.2500E+06 3.3750E+06 3.5000E+06 
 3.6250E+06 3.7500E+06 3.8750E+06 4.0000E+06 4.2000E+06 4.4000E+06 
 4.6000E+06 4.8000E+06 5.0000E+06 5.2000E+06 5.4000E+06 5.6000E+06 
 5.8000E+06 6.0000E+06 6.2000E+06 6.4000E+06 6.6000E+06 6.8000E+06 
 7.0000E+06 7.2000E+06 7.4000E+06 7.6000E+06 7.8000E+06 8.0000E+06 
 8.2000E+06 8.4000E+06 8.6000E+06 8.8000E+06 9.0000E+06 9.2000E+06 
 9.4000E+06 9.6000E+06 9.8000E+06 1.0000E+07 1.1000E+07 1.2000E+07 
 1.3000E+07 1.4000E+07 1.5000E+07 1.6000E+07 1.7000E+07 1.8000E+07 
 1.9000E+07 2.0000E+07 2.2000E+07 2.4000E+07 2.6000E+07 2.8000E+07 
 3.0000E+07 3.5000E+07 4.0000E+07 4.5000E+07 5.0000E+07 5.4000E+07 
 5.5000E+07 6.0000E+07 7.0000E+07 8.0000E+07 9.0000E+07 1.0000E+08 
 1.2000E+08 1.4000E+08 1.6000E+08 1.8000E+08 2.0000E+08 2.4000E+08 
 2.8000E+08 3.2000E+08 3.6000E+08 4.0000E+08 4.4000E+08 4.8000E+08
 5.2000E+08 5.6000E+08 6.0000E+08 6.4000E+08 6.8000E+08 7.2000E+08 
 7.6000E+08 8.0000E+08 8.4000E+08 8.8000E+08 9.2000E+08 9.6000E+08 
 1.0000E+09               
EOF
    ${codes}groupie
    echo 'saving output, pendf, gendf files'
     rm -r output/${elem}${mass}
     mkdir output/${elem}${mass}
 #    mv GROUPIE.OUT output/${elem}${mass}/
     mv *.INP output/${elem}${mass}/
     mv *.OUT output/${elem}${mass}/
     mv *.LST output/${elem}${mass}/
     mv PLOT0001.ps output/${elem}${mass}/${elem}${mass}.ps
#     
#     
     rm *.IN ENDFB.M* *.CUR
#fi
done < ../processing/iso-mat.iaea-g19
#
#
#
