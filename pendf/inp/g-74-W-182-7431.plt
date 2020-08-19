set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_74-W-182_7431.eps'
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
set title '74-W-182-7431.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_74-W-182_7431.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_74-W-182_7431.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_74-W-182_7431.resid' i 6 u ($1/1E+6):3 ti 'g' w l dt 6 axes x1y2,

set output 'eps-log/g_74-W-182_7431.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_74-W-182_7431.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_74-W-182_7431.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_74-W-182_7431.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_74-W-182_7431.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_74-W-182_7431.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_74-W-182_7431.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_74-W-182_7431.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_74-W-182_7431.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'g',