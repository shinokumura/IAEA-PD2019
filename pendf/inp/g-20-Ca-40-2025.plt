set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_20-Ca-40_2025.eps'
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
set title '20-Ca-40-2025.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_20-Ca-40_2025.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_20-Ca-40_2025.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 6 u ($1/1E+6):3 ti 'Cl-32' w l dt 6 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 7 u ($1/1E+6):3 ti 'Cl-33' w l dt 7 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 8 u ($1/1E+6):3 ti 'Cl-34' w l dt 8 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 9 u ($1/1E+6):3 ti 'Cl-35' w l dt 9 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 10 u ($1/1E+6):3 ti 'Cl-36' w l dt 10 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 11 u ($1/1E+6):3 ti 'Cl-37' w l dt 11 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 12 u ($1/1E+6):3 ti 'Ar-33' w l dt 12 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 13 u ($1/1E+6):3 ti 'Ar-34' w l dt 13 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 14 u ($1/1E+6):3 ti 'Ar-35' w l dt 14 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 15 u ($1/1E+6):3 ti 'Ar-36' w l dt 15 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 16 u ($1/1E+6):3 ti 'Ar-37' w l dt 16 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 17 u ($1/1E+6):3 ti 'Ar-38' w l dt 17 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 18 u ($1/1E+6):3 ti 'K-37' w l dt 18 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 19 u ($1/1E+6):3 ti 'K-38' w l dt 19 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 20 u ($1/1E+6):3 ti 'K-39' w l dt 20 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 21 u ($1/1E+6):3 ti 'Ca-37' w l dt 21 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 22 u ($1/1E+6):3 ti 'Ca-38' w l dt 22 axes x1y2,'mf6mt5/g_20-Ca-40_2025.resid' i 23 u ($1/1E+6):3 ti 'Ca-39' w l dt 23 axes x1y2,

set output 'eps-log/g_20-Ca-40_2025.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_20-Ca-40_2025.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_20-Ca-40_2025.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_20-Ca-40_2025.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_20-Ca-40_2025.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_20-Ca-40_2025.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_20-Ca-40_2025.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_20-Ca-40_2025.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_20-Ca-40_2025.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'Cl-32','mf6mt5/g_20-Ca-40_2025.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'Cl-33','mf6mt5/g_20-Ca-40_2025.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'Cl-34','mf6mt5/g_20-Ca-40_2025.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Cl-35','mf6mt5/g_20-Ca-40_2025.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Cl-36','mf6mt5/g_20-Ca-40_2025.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Cl-37','mf6mt5/g_20-Ca-40_2025.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Ar-33','mf6mt5/g_20-Ca-40_2025.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Ar-34','mf6mt5/g_20-Ca-40_2025.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Ar-35','mf6mt5/g_20-Ca-40_2025.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Ar-36','mf6mt5/g_20-Ca-40_2025.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'Ar-37','mf6mt5/g_20-Ca-40_2025.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'Ar-38','mf6mt5/g_20-Ca-40_2025.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'K-37','mf6mt5/g_20-Ca-40_2025.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'K-38','mf6mt5/g_20-Ca-40_2025.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'K-39','mf6mt5/g_20-Ca-40_2025.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'Ca-37','mf6mt5/g_20-Ca-40_2025.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'Ca-38','mf6mt5/g_20-Ca-40_2025.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'Ca-39',