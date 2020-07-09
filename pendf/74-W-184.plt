
set ylabel "XS"
set y2label "Multiplicity"

set y2tics
#set log y

set tics font "Helvetica,18"
set xlabel font "Helvetica,18"
set ylabel font "Helvetica,18"
set y2label font "Helvetica,18"
set key font "Helvetica,18"
set title font "Helvetica,18"
set label 1 font "Helvetica,18"
set style fill
set ytics nomirror

set title "74-W-184"

# #set xrange [1E-8:2E+8]

# plot \
#       "mf3mt5/g_74-W-184_7437.dat"         u 1:2 ti "MF3 MT5" w lp lw 2 pt 4,\
#       "mf6mt5/g_74-W-184_7437.resid" i 0   u 1:4 ti "MF6 MT5 ZAP=1 XS x Multiplicity" w l,\
#      ""                             i 6  u 1:4 ti "MF6 MT5 ZAP=0 XS x Multiplicity" w l,\
#      ""                             i 0   u 1:3 ti "MF6 MT5 ZAP=1 Multiplicity" axes x1y2,\
#      ""                             i 6  u 1:3 ti "MF6 MT5 ZAP=0 Multiplicity" axes x1y2 pt 8 lc rgb "red",\


# pause -1


unset y2tics
unset y2label
#unset log y
unset title



set format y '10^{%L}'
#set ytics 10
set xrange [:2E+8]
set xlabel 
set multiplot layout 2,1 spacing screen 0.02
set lmargin at screen 0.1
set tmargin at screen 0.95
set bmargin at screen 0.60

set ylabel "Multiplicity"
set format x ""
unset xlabel
plot \
      "mf6mt5/g_74-W-184_7437.resid"  i 0   u 1:3 ti "MF6 MT5 ZAP=1 Multiplicity" ,\
       ""                             i 6  u 1:3 ti "MF6 MT5 ZAP=0 Multiplicity" pt 8 lc rgb "red"


unset format x
set xlabel "Energy (eV)"
set ylabel "XS"
set lmargin at screen 0.1
set tmargin at screen 0.60
set bmargin at screen 0.12
plot \
      "mf3mt5/g_74-W-184_7437.dat"         u 1:2 ti "MF3 MT5" w lp lw 2 pt 4,\
      "mf6mt5/g_74-W-184_7437.resid" i 0   u 1:4 ti "MF6 MT5 ZAP=1 XS x Multiplicity" w l,\
       ""                             i 6  u 1:4 ti "MF6 MT5 ZAP=0 XS x Multiplicity" w l
unset multiplot



pause -1

set log y
set multiplot
replot