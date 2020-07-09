
set ylabel "XS"
set y2label "Multiplicity"
set xlabel "Energy (eV)"
set y2tics
set log y

set tics font "Helvetica,18"
set xlabel font "Helvetica,18"
set ylabel font "Helvetica,18"
set y2label font "Helvetica,18"
set key font "Helvetica,18"
set title font "Helvetica,18"
set label 1 font "Helvetica,18"

set ytics nomirror

set title "13-Al-27"

plot \
     "mf3mt5/g_13-Al-27_1325.dat"         u 1:2 ti "MF3 MT5" w lp lw 2,\
     "mf6mt5/g_13-Al-27_1325.resid" i 0   u 1:4 ti "MF6 MT5 ZAP=1 XS x Multiplicity" w l,\
     ""                             i 40  u 1:4 ti "MF6 MT5 ZAP=0 XS x Multiplicity" w l,\
     ""                             i 0   u 1:3 ti "MF6 MT5 ZAP=1 Multiplicity" axes x1y2,\
     ""                             i 40  u 1:3 ti "MF6 MT5 ZAP=0 Multiplicity" axes x1y2 pt 8 lc rgb "red",\

#     [12:72] "../processing/ace/N15" u 1:4 ti "ACE"
#     "7-N-15-MF6-MT3.dat" i 0 u 1:2 ti "MF6 MT3 ZAP=1 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 83 u 1:2 ti "MF6 MT3 ZAP=1001 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 166 u 1:2 ti "MF6 MT3 ZAP=1002 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 0 u 1:3 ti "MF6 MT3 ZAP=1 Multiplicity" axes x1y2,\
#     "7-N-15-MF6-MT3.dat" i 83 u 1:3 ti "MF6 MT3 ZAP=1001 Multiplicity" axes x1y2,\


