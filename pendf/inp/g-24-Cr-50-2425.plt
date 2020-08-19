set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_24-Cr-50_2425.eps'
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
set title '24-Cr-50-2425.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_24-Cr-50_2425.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_24-Cr-50_2425.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 6 u ($1/1E+6):3 ti 'S-34' w l dt 6 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 7 u ($1/1E+6):3 ti 'Cl-35' w l dt 7 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 8 u ($1/1E+6):3 ti 'Cl-36' w l dt 8 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 9 u ($1/1E+6):3 ti 'Cl-37' w l dt 9 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 10 u ($1/1E+6):3 ti 'Cl-38' w l dt 10 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 11 u ($1/1E+6):3 ti 'Ar-36' w l dt 11 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 12 u ($1/1E+6):3 ti 'Ar-37' w l dt 12 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 13 u ($1/1E+6):3 ti 'Ar-38' w l dt 13 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 14 u ($1/1E+6):3 ti 'Ar-39' w l dt 14 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 15 u ($1/1E+6):3 ti 'Ar-40' w l dt 15 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 16 u ($1/1E+6):3 ti 'K-38' w l dt 16 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 17 u ($1/1E+6):3 ti 'K-39' w l dt 17 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 18 u ($1/1E+6):3 ti 'K-40' w l dt 18 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 19 u ($1/1E+6):3 ti 'K-41' w l dt 19 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 20 u ($1/1E+6):3 ti 'K-42' w l dt 20 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 21 u ($1/1E+6):3 ti 'K-43' w l dt 21 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 22 u ($1/1E+6):3 ti 'K-44' w l dt 22 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 23 u ($1/1E+6):3 ti 'Ca-40' w l dt 23 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 24 u ($1/1E+6):3 ti 'Ca-41' w l dt 24 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 25 u ($1/1E+6):3 ti 'Ca-42' w l dt 25 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 26 u ($1/1E+6):3 ti 'Ca-43' w l dt 26 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 27 u ($1/1E+6):3 ti 'Ca-44' w l dt 27 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 28 u ($1/1E+6):3 ti 'Ca-45' w l dt 28 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 29 u ($1/1E+6):3 ti 'Ca-46' w l dt 29 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 30 u ($1/1E+6):3 ti 'Sc-42' w l dt 30 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 31 u ($1/1E+6):3 ti 'Sc-43' w l dt 31 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 32 u ($1/1E+6):3 ti 'Sc-44' w l dt 32 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 33 u ($1/1E+6):3 ti 'Sc-45' w l dt 33 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 34 u ($1/1E+6):3 ti 'Sc-46' w l dt 34 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 35 u ($1/1E+6):3 ti 'Sc-47' w l dt 35 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 36 u ($1/1E+6):3 ti 'Ti-44' w l dt 36 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 37 u ($1/1E+6):3 ti 'Ti-45' w l dt 37 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 38 u ($1/1E+6):3 ti 'Ti-46' w l dt 38 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 39 u ($1/1E+6):3 ti 'Ti-47' w l dt 39 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 40 u ($1/1E+6):3 ti 'Ti-48' w l dt 40 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 41 u ($1/1E+6):3 ti 'V-45' w l dt 41 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 42 u ($1/1E+6):3 ti 'V-46' w l dt 42 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 43 u ($1/1E+6):3 ti 'V-47' w l dt 43 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 44 u ($1/1E+6):3 ti 'V-48' w l dt 44 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 45 u ($1/1E+6):3 ti 'V-49' w l dt 45 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 46 u ($1/1E+6):3 ti 'Cr-47' w l dt 46 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 47 u ($1/1E+6):3 ti 'Cr-48' w l dt 47 axes x1y2,'mf6mt5/g_24-Cr-50_2425.resid' i 48 u ($1/1E+6):3 ti 'Cr-49' w l dt 48 axes x1y2,

set output 'eps-log/g_24-Cr-50_2425.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_24-Cr-50_2425.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_24-Cr-50_2425.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_24-Cr-50_2425.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_24-Cr-50_2425.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_24-Cr-50_2425.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_24-Cr-50_2425.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_24-Cr-50_2425.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_24-Cr-50_2425.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'S-34','mf6mt5/g_24-Cr-50_2425.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'Cl-35','mf6mt5/g_24-Cr-50_2425.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'Cl-36','mf6mt5/g_24-Cr-50_2425.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Cl-37','mf6mt5/g_24-Cr-50_2425.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Cl-38','mf6mt5/g_24-Cr-50_2425.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Ar-36','mf6mt5/g_24-Cr-50_2425.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Ar-37','mf6mt5/g_24-Cr-50_2425.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Ar-38','mf6mt5/g_24-Cr-50_2425.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Ar-39','mf6mt5/g_24-Cr-50_2425.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Ar-40','mf6mt5/g_24-Cr-50_2425.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'K-38','mf6mt5/g_24-Cr-50_2425.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'K-39','mf6mt5/g_24-Cr-50_2425.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'K-40','mf6mt5/g_24-Cr-50_2425.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'K-41','mf6mt5/g_24-Cr-50_2425.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'K-42','mf6mt5/g_24-Cr-50_2425.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'K-43','mf6mt5/g_24-Cr-50_2425.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'K-44','mf6mt5/g_24-Cr-50_2425.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'Ca-40','mf6mt5/g_24-Cr-50_2425.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'Ca-41','mf6mt5/g_24-Cr-50_2425.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'Ca-42','mf6mt5/g_24-Cr-50_2425.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'Ca-43','mf6mt5/g_24-Cr-50_2425.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'Ca-44','mf6mt5/g_24-Cr-50_2425.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'Ca-45','mf6mt5/g_24-Cr-50_2425.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'Ca-46','mf6mt5/g_24-Cr-50_2425.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'Sc-42','mf6mt5/g_24-Cr-50_2425.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'Sc-43','mf6mt5/g_24-Cr-50_2425.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'Sc-44','mf6mt5/g_24-Cr-50_2425.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'Sc-45','mf6mt5/g_24-Cr-50_2425.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'Sc-46','mf6mt5/g_24-Cr-50_2425.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'Sc-47','mf6mt5/g_24-Cr-50_2425.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'Ti-44','mf6mt5/g_24-Cr-50_2425.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'Ti-45','mf6mt5/g_24-Cr-50_2425.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'Ti-46','mf6mt5/g_24-Cr-50_2425.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'Ti-47','mf6mt5/g_24-Cr-50_2425.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'Ti-48','mf6mt5/g_24-Cr-50_2425.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'V-45','mf6mt5/g_24-Cr-50_2425.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'V-46','mf6mt5/g_24-Cr-50_2425.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'V-47','mf6mt5/g_24-Cr-50_2425.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'V-48','mf6mt5/g_24-Cr-50_2425.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'V-49','mf6mt5/g_24-Cr-50_2425.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'Cr-47','mf6mt5/g_24-Cr-50_2425.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'Cr-48','mf6mt5/g_24-Cr-50_2425.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'Cr-49',