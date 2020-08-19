set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_40-Zr-90_4025.eps'
set size ratio 0.65
set format y '10^{%L}'
set ytics 10
set log y

set format y2 '10^{%L}'
set log y2
set y2tics

set yrange [1E-10:]
set xrange [9E-1:]

set xlabel 'Incident photon energy [MeV]' offset 0,0.5
set ylabel 'Cross section [b]'
set y2label 'Residual multiplicity'
set ytics nomirror
set title '40-Zr-90-4025.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_40-Zr-90_4025.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_40-Zr-90_4025.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 6 u ($1/1E+6):3 ti 'As-74' w l dt 6 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 7 u ($1/1E+6):3 ti 'As-75' w l dt 7 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 8 u ($1/1E+6):3 ti 'As-76' w l dt 8 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 9 u ($1/1E+6):3 ti 'Se-75' w l dt 9 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 10 u ($1/1E+6):3 ti 'Se-76' w l dt 10 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 11 u ($1/1E+6):3 ti 'Se-77' w l dt 11 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 12 u ($1/1E+6):3 ti 'Se-78' w l dt 12 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 13 u ($1/1E+6):3 ti 'Se-79' w l dt 13 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 14 u ($1/1E+6):3 ti 'Br-77' w l dt 14 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 15 u ($1/1E+6):3 ti 'Br-78' w l dt 15 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 16 u ($1/1E+6):3 ti 'Br-79' w l dt 16 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 17 u ($1/1E+6):3 ti 'Br-80' w l dt 17 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 18 u ($1/1E+6):3 ti 'Br-81' w l dt 18 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 19 u ($1/1E+6):3 ti 'Br-82' w l dt 19 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 20 u ($1/1E+6):3 ti 'Kr-78' w l dt 20 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 21 u ($1/1E+6):3 ti 'Kr-79' w l dt 21 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 22 u ($1/1E+6):3 ti 'Kr-80' w l dt 22 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 23 u ($1/1E+6):3 ti 'Kr-81' w l dt 23 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 24 u ($1/1E+6):3 ti 'Kr-82' w l dt 24 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 25 u ($1/1E+6):3 ti 'Kr-83' w l dt 25 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 26 u ($1/1E+6):3 ti 'Kr-84' w l dt 26 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 27 u ($1/1E+6):3 ti 'Kr-85' w l dt 27 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 28 u ($1/1E+6):3 ti 'Rb-80' w l dt 28 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 29 u ($1/1E+6):3 ti 'Rb-81' w l dt 29 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 30 u ($1/1E+6):3 ti 'Rb-82' w l dt 30 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 31 u ($1/1E+6):3 ti 'Rb-83' w l dt 31 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 32 u ($1/1E+6):3 ti 'Rb-84' w l dt 32 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 33 u ($1/1E+6):3 ti 'Rb-85' w l dt 33 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 34 u ($1/1E+6):3 ti 'Rb-86' w l dt 34 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 35 u ($1/1E+6):3 ti 'Rb-87' w l dt 35 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 36 u ($1/1E+6):3 ti 'Sr-81' w l dt 36 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 37 u ($1/1E+6):3 ti 'Sr-82' w l dt 37 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 38 u ($1/1E+6):3 ti 'Sr-83' w l dt 38 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 39 u ($1/1E+6):3 ti 'Sr-84' w l dt 39 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 40 u ($1/1E+6):3 ti 'Sr-85' w l dt 40 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 41 u ($1/1E+6):3 ti 'Sr-86' w l dt 41 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 42 u ($1/1E+6):3 ti 'Sr-87' w l dt 42 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 43 u ($1/1E+6):3 ti 'Sr-88' w l dt 43 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 44 u ($1/1E+6):3 ti 'Y-83' w l dt 44 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 45 u ($1/1E+6):3 ti 'Y-84' w l dt 45 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 46 u ($1/1E+6):3 ti 'Y-85' w l dt 46 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 47 u ($1/1E+6):3 ti 'Y-86' w l dt 47 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 48 u ($1/1E+6):3 ti 'Y-87' w l dt 48 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 49 u ($1/1E+6):3 ti 'Y-88' w l dt 49 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 50 u ($1/1E+6):3 ti 'Y-89' w l dt 50 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 51 u ($1/1E+6):3 ti 'Zr-84' w l dt 51 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 52 u ($1/1E+6):3 ti 'Zr-85' w l dt 52 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 53 u ($1/1E+6):3 ti 'Zr-86' w l dt 53 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 54 u ($1/1E+6):3 ti 'Zr-87' w l dt 54 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 55 u ($1/1E+6):3 ti 'Zr-88' w l dt 55 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 56 u ($1/1E+6):3 ti 'Zr-89' w l dt 56 axes x1y2,'mf6mt5/g_40-Zr-90_4025.resid' i 57 u ($1/1E+6):3 ti 'g' w l dt 57 axes x1y2,

set output 'eps-log/g_40-Zr-90_4025.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_40-Zr-90_4025.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_40-Zr-90_4025.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_40-Zr-90_4025.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_40-Zr-90_4025.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_40-Zr-90_4025.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_40-Zr-90_4025.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_40-Zr-90_4025.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_40-Zr-90_4025.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'As-74','mf6mt5/g_40-Zr-90_4025.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'As-75','mf6mt5/g_40-Zr-90_4025.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'As-76','mf6mt5/g_40-Zr-90_4025.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Se-75','mf6mt5/g_40-Zr-90_4025.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Se-76','mf6mt5/g_40-Zr-90_4025.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Se-77','mf6mt5/g_40-Zr-90_4025.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Se-78','mf6mt5/g_40-Zr-90_4025.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Se-79','mf6mt5/g_40-Zr-90_4025.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Br-77','mf6mt5/g_40-Zr-90_4025.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Br-78','mf6mt5/g_40-Zr-90_4025.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'Br-79','mf6mt5/g_40-Zr-90_4025.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'Br-80','mf6mt5/g_40-Zr-90_4025.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'Br-81','mf6mt5/g_40-Zr-90_4025.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'Br-82','mf6mt5/g_40-Zr-90_4025.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'Kr-78','mf6mt5/g_40-Zr-90_4025.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'Kr-79','mf6mt5/g_40-Zr-90_4025.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'Kr-80','mf6mt5/g_40-Zr-90_4025.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'Kr-81','mf6mt5/g_40-Zr-90_4025.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'Kr-82','mf6mt5/g_40-Zr-90_4025.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'Kr-83','mf6mt5/g_40-Zr-90_4025.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'Kr-84','mf6mt5/g_40-Zr-90_4025.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'Kr-85','mf6mt5/g_40-Zr-90_4025.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'Rb-80','mf6mt5/g_40-Zr-90_4025.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'Rb-81','mf6mt5/g_40-Zr-90_4025.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'Rb-82','mf6mt5/g_40-Zr-90_4025.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'Rb-83','mf6mt5/g_40-Zr-90_4025.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'Rb-84','mf6mt5/g_40-Zr-90_4025.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'Rb-85','mf6mt5/g_40-Zr-90_4025.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'Rb-86','mf6mt5/g_40-Zr-90_4025.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'Rb-87','mf6mt5/g_40-Zr-90_4025.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'Sr-81','mf6mt5/g_40-Zr-90_4025.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'Sr-82','mf6mt5/g_40-Zr-90_4025.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'Sr-83','mf6mt5/g_40-Zr-90_4025.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'Sr-84','mf6mt5/g_40-Zr-90_4025.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'Sr-85','mf6mt5/g_40-Zr-90_4025.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'Sr-86','mf6mt5/g_40-Zr-90_4025.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'Sr-87','mf6mt5/g_40-Zr-90_4025.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'Sr-88','mf6mt5/g_40-Zr-90_4025.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'Y-83','mf6mt5/g_40-Zr-90_4025.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'Y-84','mf6mt5/g_40-Zr-90_4025.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'Y-85','mf6mt5/g_40-Zr-90_4025.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'Y-86','mf6mt5/g_40-Zr-90_4025.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'Y-87','mf6mt5/g_40-Zr-90_4025.resid' i 49 u ($1/1E+6):4 w l dt 49 ti 'Y-88','mf6mt5/g_40-Zr-90_4025.resid' i 50 u ($1/1E+6):4 w l dt 50 ti 'Y-89','mf6mt5/g_40-Zr-90_4025.resid' i 51 u ($1/1E+6):4 w l dt 51 ti 'Zr-84','mf6mt5/g_40-Zr-90_4025.resid' i 52 u ($1/1E+6):4 w l dt 52 ti 'Zr-85','mf6mt5/g_40-Zr-90_4025.resid' i 53 u ($1/1E+6):4 w l dt 53 ti 'Zr-86','mf6mt5/g_40-Zr-90_4025.resid' i 54 u ($1/1E+6):4 w l dt 54 ti 'Zr-87','mf6mt5/g_40-Zr-90_4025.resid' i 55 u ($1/1E+6):4 w l dt 55 ti 'Zr-88','mf6mt5/g_40-Zr-90_4025.resid' i 56 u ($1/1E+6):4 w l dt 56 ti 'Zr-89','mf6mt5/g_40-Zr-90_4025.resid' i 57 u ($1/1E+6):4 w l dt 57 ti 'g',