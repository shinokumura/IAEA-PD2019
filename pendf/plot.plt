set term postsc enhanced eps color solid font 'Helvetica,16'
set output 'eps/g_14-Si-27_1422.eps'
set xrange [9E-1:]
set format x '10^{%L}'
set xtics 10
set log x
set xlabel 'Incident photon energy [MeV]'
set ylabel 'Cross section [b]'
set y2label 'Residual multiplicity'
set ytics nomirror
set y2tics 1
plot 'mf3mt5/g_14-Si-27_1422.dat' u ($1/1E+6):2 ti 'MF3 MT5 (Photo-absorption)' w l lw 2 lc rgb 'red',\
'mf6mt5/g_14-Si-27_1422.law1' i 0 u ($1/1E+6):3 ti 'n' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 1 u ($1/1E+6):3 ti 'p' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 2 u ($1/1E+6):3 ti 'd' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 3 u ($1/1E+6):3 ti 'H-3' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 4 u ($1/1E+6):3 ti 'alpha' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 5 u ($1/1E+6):3 ti 'Mg-20' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 6 u ($1/1E+6):3 ti 'Mg-21' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 7 u ($1/1E+6):3 ti 'Mg-22' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 8 u ($1/1E+6):3 ti 'Mg-23' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 9 u ($1/1E+6):3 ti 'Mg-24' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 10 u ($1/1E+6):3 ti 'Mg-25' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 11 u ($1/1E+6):3 ti 'Al-20' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 12 u ($1/1E+6):3 ti 'Al-21' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 13 u ($1/1E+6):3 ti 'Al-22' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 14 u ($1/1E+6):3 ti 'Al-23' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 15 u ($1/1E+6):3 ti 'Al-24' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 16 u ($1/1E+6):3 ti 'Al-25' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 17 u ($1/1E+6):3 ti 'Al-26' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 18 u ($1/1E+6):3 ti 'Si-22' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 19 u ($1/1E+6):3 ti 'Si-23' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 20 u ($1/1E+6):3 ti 'Si-26' w l dt (10,5) axes x1y2,\
'mf6mt5/g_14-Si-27_1422.law1' i 21 u ($1/1E+6):3 ti 'g' w l dt (10,5) axes x1y2,\


set output 'eps-law0/g_14-Si-27_1422.eps'
plot 'mf3mt5/g_14-Si-27_1422.dat' u ($1/1E+6):2 ti 'MF3 MT5 (Photo-absorption)' w l lw 2 lc rgb 'red',\
'mf6mt5/g_14-Si-27_1422.law0' i 0 u ($1/1E+6):3 ti '' w l dt (10,5) axes x1y2,\
