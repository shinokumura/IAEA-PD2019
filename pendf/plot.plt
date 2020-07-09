set term postsc enhanced eps color solid font 'Helvetica,18'
set output 'eps/g_94-Pu-241_9443.eps'
set format x '10^{%L}'
set xtics 10
set log x
set xlabel 'Incident photon energy [eV]'
set ylabel 'Cross section [b]'
plot 'mf3mt5/g_94-Pu-241_9443.dat' u 1:2 ti 'MF3 MT5' w l lw 2 lc rgb 'black','mf6mt5/g_94-Pu-241_9443.resid' i 0 u 1:4 ti '1' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 1 u 1:4 ti '1001' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 2 u 1:4 ti '1002' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 3 u 1:4 ti '1003' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 4 u 1:4 ti '2003' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 5 u 1:4 ti '2004' w l,'mf6mt5/g_94-Pu-241_9443.resid' i 6 u 1:4 ti '0' w l,

set output 'eps-log/g_94-Pu-241_9443.eps'
set format y '10^{%L}'
set ytics 10
set key bottom
set log y
 replot
