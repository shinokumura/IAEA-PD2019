#set y2label "Multiplicity"
set ylabel "XS"
set xlabel "Energy (eV)"
#set y2tics 0.5
#set log y

set tics font "Helvetica,18"
set xlabel font "Helvetica,18"
set ylabel font "Helvetica,18"
set y2label font "Helvetica,18"
set key font "Helvetica,18"
set title font "Helvetica,18"
set label 1 font "Helvetica,18"

set ytics nomirror

set title "7-N-15"

plot \
     "7-N-15-MF3-MT3.dat"       u 1:2 ti "MF3 MT3" w lp lw 2,\
     "7-N-15-MF6-MT3.dat" i 0   u 1:4 ti "MF6 MT3 ZAP=1 XS x Multiplicity" w l,\
     "7-N-15-MF6-MT3.dat" i 83  u 1:4 ti "MF6 MT3 ZAP=1001 XS x Multiplicity" w l,\
     "7-N-15-MF6-MT3.dat" i 166 u 1:4 ti "MF6 MT3 ZAP=1002 XS x Multiplicity" w l,\

#     [12:72] "../processing/ace/N15" u 1:4 ti "ACE"
#     "7-N-15-MF6-MT3.dat" i 0 u 1:2 ti "MF6 MT3 ZAP=1 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 83 u 1:2 ti "MF6 MT3 ZAP=1001 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 166 u 1:2 ti "MF6 MT3 ZAP=1002 production xs" w l,\
#     "7-N-15-MF6-MT3.dat" i 0 u 1:3 ti "MF6 MT3 ZAP=1 Multiplicity" axes x1y2,\
#     "7-N-15-MF6-MT3.dat" i 83 u 1:3 ti "MF6 MT3 ZAP=1001 Multiplicity" axes x1y2,\


