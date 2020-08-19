set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_34-Se-80_3443.eps'
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
set title '34-Se-80-3443.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_34-Se-80_3443.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_34-Se-80_3443.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 6 u ($1/1E+6):3 ti 'Cr-50' w l dt 6 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 7 u ($1/1E+6):3 ti 'Cr-51' w l dt 7 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 8 u ($1/1E+6):3 ti 'Cr-52' w l dt 8 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 9 u ($1/1E+6):3 ti 'Cr-53' w l dt 9 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 10 u ($1/1E+6):3 ti 'Cr-54' w l dt 10 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 11 u ($1/1E+6):3 ti 'Mn-51' w l dt 11 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 12 u ($1/1E+6):3 ti 'Mn-52' w l dt 12 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 13 u ($1/1E+6):3 ti 'Mn-52' w l dt 13 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 14 u ($1/1E+6):3 ti 'Mn-53' w l dt 14 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 15 u ($1/1E+6):3 ti 'Mn-54' w l dt 15 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 16 u ($1/1E+6):3 ti 'Mn-55' w l dt 16 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 17 u ($1/1E+6):3 ti 'Mn-56' w l dt 17 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 18 u ($1/1E+6):3 ti 'Fe-53' w l dt 18 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 19 u ($1/1E+6):3 ti 'Fe-53' w l dt 19 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 20 u ($1/1E+6):3 ti 'Fe-54' w l dt 20 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 21 u ($1/1E+6):3 ti 'Fe-55' w l dt 21 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 22 u ($1/1E+6):3 ti 'Fe-56' w l dt 22 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 23 u ($1/1E+6):3 ti 'Fe-57' w l dt 23 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 24 u ($1/1E+6):3 ti 'Fe-58' w l dt 24 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 25 u ($1/1E+6):3 ti 'Co-54' w l dt 25 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 26 u ($1/1E+6):3 ti 'Co-54' w l dt 26 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 27 u ($1/1E+6):3 ti 'Co-55' w l dt 27 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 28 u ($1/1E+6):3 ti 'Co-56' w l dt 28 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 29 u ($1/1E+6):3 ti 'Co-57' w l dt 29 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 30 u ($1/1E+6):3 ti 'Co-58' w l dt 30 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 31 u ($1/1E+6):3 ti 'Co-58' w l dt 31 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 32 u ($1/1E+6):3 ti 'Co-59' w l dt 32 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 33 u ($1/1E+6):3 ti 'Co-60' w l dt 33 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 34 u ($1/1E+6):3 ti 'Co-60' w l dt 34 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 35 u ($1/1E+6):3 ti 'Co-61' w l dt 35 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 36 u ($1/1E+6):3 ti 'Ni-57' w l dt 36 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 37 u ($1/1E+6):3 ti 'Ni-58' w l dt 37 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 38 u ($1/1E+6):3 ti 'Ni-59' w l dt 38 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 39 u ($1/1E+6):3 ti 'Ni-60' w l dt 39 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 40 u ($1/1E+6):3 ti 'Ni-61' w l dt 40 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 41 u ($1/1E+6):3 ti 'Ni-62' w l dt 41 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 42 u ($1/1E+6):3 ti 'Ni-63' w l dt 42 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 43 u ($1/1E+6):3 ti 'Ni-64' w l dt 43 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 44 u ($1/1E+6):3 ti 'Cu-59' w l dt 44 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 45 u ($1/1E+6):3 ti 'Cu-60' w l dt 45 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 46 u ($1/1E+6):3 ti 'Cu-61' w l dt 46 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 47 u ($1/1E+6):3 ti 'Cu-62' w l dt 47 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 48 u ($1/1E+6):3 ti 'Cu-63' w l dt 48 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 49 u ($1/1E+6):3 ti 'Cu-64' w l dt 49 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 50 u ($1/1E+6):3 ti 'Cu-65' w l dt 50 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 51 u ($1/1E+6):3 ti 'Cu-66' w l dt 51 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 52 u ($1/1E+6):3 ti 'Cu-67' w l dt 52 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 53 u ($1/1E+6):3 ti 'Zn-61' w l dt 53 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 54 u ($1/1E+6):3 ti 'Zn-62' w l dt 54 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 55 u ($1/1E+6):3 ti 'Zn-63' w l dt 55 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 56 u ($1/1E+6):3 ti 'Zn-64' w l dt 56 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 57 u ($1/1E+6):3 ti 'Zn-65' w l dt 57 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 58 u ($1/1E+6):3 ti 'Zn-66' w l dt 58 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 59 u ($1/1E+6):3 ti 'Zn-67' w l dt 59 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 60 u ($1/1E+6):3 ti 'Zn-68' w l dt 60 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 61 u ($1/1E+6):3 ti 'Zn-69' w l dt 61 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 62 u ($1/1E+6):3 ti 'Zn-69' w l dt 62 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 63 u ($1/1E+6):3 ti 'Zn-70' w l dt 63 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 64 u ($1/1E+6):3 ti 'Ga-63' w l dt 64 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 65 u ($1/1E+6):3 ti 'Ga-64' w l dt 65 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 66 u ($1/1E+6):3 ti 'Ga-65' w l dt 66 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 67 u ($1/1E+6):3 ti 'Ga-66' w l dt 67 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 68 u ($1/1E+6):3 ti 'Ga-67' w l dt 68 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 69 u ($1/1E+6):3 ti 'Ga-68' w l dt 69 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 70 u ($1/1E+6):3 ti 'Ga-69' w l dt 70 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 71 u ($1/1E+6):3 ti 'Ga-70' w l dt 71 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 72 u ($1/1E+6):3 ti 'Ga-71' w l dt 72 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 73 u ($1/1E+6):3 ti 'Ga-72' w l dt 73 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 74 u ($1/1E+6):3 ti 'Ga-73' w l dt 74 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 75 u ($1/1E+6):3 ti 'Ga-74' w l dt 75 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 76 u ($1/1E+6):3 ti 'Ga-74' w l dt 76 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 77 u ($1/1E+6):3 ti 'Ga-75' w l dt 77 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 78 u ($1/1E+6):3 ti 'Ge-66' w l dt 78 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 79 u ($1/1E+6):3 ti 'Ge-67' w l dt 79 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 80 u ($1/1E+6):3 ti 'Ge-68' w l dt 80 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 81 u ($1/1E+6):3 ti 'Ge-69' w l dt 81 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 82 u ($1/1E+6):3 ti 'Ge-70' w l dt 82 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 83 u ($1/1E+6):3 ti 'Ge-71' w l dt 83 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 84 u ($1/1E+6):3 ti 'Ge-72' w l dt 84 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 85 u ($1/1E+6):3 ti 'Ge-73' w l dt 85 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 86 u ($1/1E+6):3 ti 'Ge-74' w l dt 86 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 87 u ($1/1E+6):3 ti 'Ge-75' w l dt 87 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 88 u ($1/1E+6):3 ti 'Ge-75' w l dt 88 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 89 u ($1/1E+6):3 ti 'Ge-76' w l dt 89 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 90 u ($1/1E+6):3 ti 'Ge-77' w l dt 90 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 91 u ($1/1E+6):3 ti 'Ge-77' w l dt 91 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 92 u ($1/1E+6):3 ti 'Ge-78' w l dt 92 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 93 u ($1/1E+6):3 ti 'As-68' w l dt 93 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 94 u ($1/1E+6):3 ti 'As-69' w l dt 94 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 95 u ($1/1E+6):3 ti 'As-70' w l dt 95 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 96 u ($1/1E+6):3 ti 'As-71' w l dt 96 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 97 u ($1/1E+6):3 ti 'As-72' w l dt 97 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 98 u ($1/1E+6):3 ti 'As-73' w l dt 98 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 99 u ($1/1E+6):3 ti 'As-74' w l dt 99 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 100 u ($1/1E+6):3 ti 'As-75' w l dt 100 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 101 u ($1/1E+6):3 ti 'As-76' w l dt 101 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 102 u ($1/1E+6):3 ti 'As-77' w l dt 102 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 103 u ($1/1E+6):3 ti 'As-78' w l dt 103 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 104 u ($1/1E+6):3 ti 'As-79' w l dt 104 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 105 u ($1/1E+6):3 ti 'Se-71' w l dt 105 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 106 u ($1/1E+6):3 ti 'Se-72' w l dt 106 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 107 u ($1/1E+6):3 ti 'Se-73' w l dt 107 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 108 u ($1/1E+6):3 ti 'Se-73' w l dt 108 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 109 u ($1/1E+6):3 ti 'Se-74' w l dt 109 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 110 u ($1/1E+6):3 ti 'Se-75' w l dt 110 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 111 u ($1/1E+6):3 ti 'Se-76' w l dt 111 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 112 u ($1/1E+6):3 ti 'Se-77' w l dt 112 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 113 u ($1/1E+6):3 ti 'Se-77' w l dt 113 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 114 u ($1/1E+6):3 ti 'Se-78' w l dt 114 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 115 u ($1/1E+6):3 ti 'Se-79' w l dt 115 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 116 u ($1/1E+6):3 ti 'Se-79' w l dt 116 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 117 u ($1/1E+6):3 ti 'Se-80' w l dt 117 axes x1y2,'mf6mt5/g_34-Se-80_3443.resid' i 118 u ($1/1E+6):3 ti 'g' w l dt 118 axes x1y2,

set output 'eps-log/g_34-Se-80_3443.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_34-Se-80_3443.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_34-Se-80_3443.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_34-Se-80_3443.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_34-Se-80_3443.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_34-Se-80_3443.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_34-Se-80_3443.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_34-Se-80_3443.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_34-Se-80_3443.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'Cr-50','mf6mt5/g_34-Se-80_3443.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'Cr-51','mf6mt5/g_34-Se-80_3443.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'Cr-52','mf6mt5/g_34-Se-80_3443.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Cr-53','mf6mt5/g_34-Se-80_3443.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Cr-54','mf6mt5/g_34-Se-80_3443.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Mn-51','mf6mt5/g_34-Se-80_3443.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Mn-52','mf6mt5/g_34-Se-80_3443.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Mn-52','mf6mt5/g_34-Se-80_3443.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Mn-53','mf6mt5/g_34-Se-80_3443.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Mn-54','mf6mt5/g_34-Se-80_3443.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'Mn-55','mf6mt5/g_34-Se-80_3443.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'Mn-56','mf6mt5/g_34-Se-80_3443.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'Fe-53','mf6mt5/g_34-Se-80_3443.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'Fe-53','mf6mt5/g_34-Se-80_3443.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'Fe-54','mf6mt5/g_34-Se-80_3443.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'Fe-55','mf6mt5/g_34-Se-80_3443.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'Fe-56','mf6mt5/g_34-Se-80_3443.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'Fe-57','mf6mt5/g_34-Se-80_3443.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'Fe-58','mf6mt5/g_34-Se-80_3443.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'Co-54','mf6mt5/g_34-Se-80_3443.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'Co-54','mf6mt5/g_34-Se-80_3443.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'Co-55','mf6mt5/g_34-Se-80_3443.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'Co-56','mf6mt5/g_34-Se-80_3443.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'Co-57','mf6mt5/g_34-Se-80_3443.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'Co-58','mf6mt5/g_34-Se-80_3443.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'Co-58','mf6mt5/g_34-Se-80_3443.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'Co-59','mf6mt5/g_34-Se-80_3443.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'Co-60','mf6mt5/g_34-Se-80_3443.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'Co-60','mf6mt5/g_34-Se-80_3443.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'Co-61','mf6mt5/g_34-Se-80_3443.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'Ni-57','mf6mt5/g_34-Se-80_3443.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'Ni-58','mf6mt5/g_34-Se-80_3443.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'Ni-59','mf6mt5/g_34-Se-80_3443.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'Ni-60','mf6mt5/g_34-Se-80_3443.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'Ni-61','mf6mt5/g_34-Se-80_3443.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'Ni-62','mf6mt5/g_34-Se-80_3443.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'Ni-63','mf6mt5/g_34-Se-80_3443.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'Ni-64','mf6mt5/g_34-Se-80_3443.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'Cu-59','mf6mt5/g_34-Se-80_3443.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'Cu-60','mf6mt5/g_34-Se-80_3443.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'Cu-61','mf6mt5/g_34-Se-80_3443.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'Cu-62','mf6mt5/g_34-Se-80_3443.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'Cu-63','mf6mt5/g_34-Se-80_3443.resid' i 49 u ($1/1E+6):4 w l dt 49 ti 'Cu-64','mf6mt5/g_34-Se-80_3443.resid' i 50 u ($1/1E+6):4 w l dt 50 ti 'Cu-65','mf6mt5/g_34-Se-80_3443.resid' i 51 u ($1/1E+6):4 w l dt 51 ti 'Cu-66','mf6mt5/g_34-Se-80_3443.resid' i 52 u ($1/1E+6):4 w l dt 52 ti 'Cu-67','mf6mt5/g_34-Se-80_3443.resid' i 53 u ($1/1E+6):4 w l dt 53 ti 'Zn-61','mf6mt5/g_34-Se-80_3443.resid' i 54 u ($1/1E+6):4 w l dt 54 ti 'Zn-62','mf6mt5/g_34-Se-80_3443.resid' i 55 u ($1/1E+6):4 w l dt 55 ti 'Zn-63','mf6mt5/g_34-Se-80_3443.resid' i 56 u ($1/1E+6):4 w l dt 56 ti 'Zn-64','mf6mt5/g_34-Se-80_3443.resid' i 57 u ($1/1E+6):4 w l dt 57 ti 'Zn-65','mf6mt5/g_34-Se-80_3443.resid' i 58 u ($1/1E+6):4 w l dt 58 ti 'Zn-66','mf6mt5/g_34-Se-80_3443.resid' i 59 u ($1/1E+6):4 w l dt 59 ti 'Zn-67','mf6mt5/g_34-Se-80_3443.resid' i 60 u ($1/1E+6):4 w l dt 60 ti 'Zn-68','mf6mt5/g_34-Se-80_3443.resid' i 61 u ($1/1E+6):4 w l dt 61 ti 'Zn-69','mf6mt5/g_34-Se-80_3443.resid' i 62 u ($1/1E+6):4 w l dt 62 ti 'Zn-69','mf6mt5/g_34-Se-80_3443.resid' i 63 u ($1/1E+6):4 w l dt 63 ti 'Zn-70','mf6mt5/g_34-Se-80_3443.resid' i 64 u ($1/1E+6):4 w l dt 64 ti 'Ga-63','mf6mt5/g_34-Se-80_3443.resid' i 65 u ($1/1E+6):4 w l dt 65 ti 'Ga-64','mf6mt5/g_34-Se-80_3443.resid' i 66 u ($1/1E+6):4 w l dt 66 ti 'Ga-65','mf6mt5/g_34-Se-80_3443.resid' i 67 u ($1/1E+6):4 w l dt 67 ti 'Ga-66','mf6mt5/g_34-Se-80_3443.resid' i 68 u ($1/1E+6):4 w l dt 68 ti 'Ga-67','mf6mt5/g_34-Se-80_3443.resid' i 69 u ($1/1E+6):4 w l dt 69 ti 'Ga-68','mf6mt5/g_34-Se-80_3443.resid' i 70 u ($1/1E+6):4 w l dt 70 ti 'Ga-69','mf6mt5/g_34-Se-80_3443.resid' i 71 u ($1/1E+6):4 w l dt 71 ti 'Ga-70','mf6mt5/g_34-Se-80_3443.resid' i 72 u ($1/1E+6):4 w l dt 72 ti 'Ga-71','mf6mt5/g_34-Se-80_3443.resid' i 73 u ($1/1E+6):4 w l dt 73 ti 'Ga-72','mf6mt5/g_34-Se-80_3443.resid' i 74 u ($1/1E+6):4 w l dt 74 ti 'Ga-73','mf6mt5/g_34-Se-80_3443.resid' i 75 u ($1/1E+6):4 w l dt 75 ti 'Ga-74','mf6mt5/g_34-Se-80_3443.resid' i 76 u ($1/1E+6):4 w l dt 76 ti 'Ga-74','mf6mt5/g_34-Se-80_3443.resid' i 77 u ($1/1E+6):4 w l dt 77 ti 'Ga-75','mf6mt5/g_34-Se-80_3443.resid' i 78 u ($1/1E+6):4 w l dt 78 ti 'Ge-66','mf6mt5/g_34-Se-80_3443.resid' i 79 u ($1/1E+6):4 w l dt 79 ti 'Ge-67','mf6mt5/g_34-Se-80_3443.resid' i 80 u ($1/1E+6):4 w l dt 80 ti 'Ge-68','mf6mt5/g_34-Se-80_3443.resid' i 81 u ($1/1E+6):4 w l dt 81 ti 'Ge-69','mf6mt5/g_34-Se-80_3443.resid' i 82 u ($1/1E+6):4 w l dt 82 ti 'Ge-70','mf6mt5/g_34-Se-80_3443.resid' i 83 u ($1/1E+6):4 w l dt 83 ti 'Ge-71','mf6mt5/g_34-Se-80_3443.resid' i 84 u ($1/1E+6):4 w l dt 84 ti 'Ge-72','mf6mt5/g_34-Se-80_3443.resid' i 85 u ($1/1E+6):4 w l dt 85 ti 'Ge-73','mf6mt5/g_34-Se-80_3443.resid' i 86 u ($1/1E+6):4 w l dt 86 ti 'Ge-74','mf6mt5/g_34-Se-80_3443.resid' i 87 u ($1/1E+6):4 w l dt 87 ti 'Ge-75','mf6mt5/g_34-Se-80_3443.resid' i 88 u ($1/1E+6):4 w l dt 88 ti 'Ge-75','mf6mt5/g_34-Se-80_3443.resid' i 89 u ($1/1E+6):4 w l dt 89 ti 'Ge-76','mf6mt5/g_34-Se-80_3443.resid' i 90 u ($1/1E+6):4 w l dt 90 ti 'Ge-77','mf6mt5/g_34-Se-80_3443.resid' i 91 u ($1/1E+6):4 w l dt 91 ti 'Ge-77','mf6mt5/g_34-Se-80_3443.resid' i 92 u ($1/1E+6):4 w l dt 92 ti 'Ge-78','mf6mt5/g_34-Se-80_3443.resid' i 93 u ($1/1E+6):4 w l dt 93 ti 'As-68','mf6mt5/g_34-Se-80_3443.resid' i 94 u ($1/1E+6):4 w l dt 94 ti 'As-69','mf6mt5/g_34-Se-80_3443.resid' i 95 u ($1/1E+6):4 w l dt 95 ti 'As-70','mf6mt5/g_34-Se-80_3443.resid' i 96 u ($1/1E+6):4 w l dt 96 ti 'As-71','mf6mt5/g_34-Se-80_3443.resid' i 97 u ($1/1E+6):4 w l dt 97 ti 'As-72','mf6mt5/g_34-Se-80_3443.resid' i 98 u ($1/1E+6):4 w l dt 98 ti 'As-73','mf6mt5/g_34-Se-80_3443.resid' i 99 u ($1/1E+6):4 w l dt 99 ti 'As-74','mf6mt5/g_34-Se-80_3443.resid' i 100 u ($1/1E+6):4 w l dt 100 ti 'As-75','mf6mt5/g_34-Se-80_3443.resid' i 101 u ($1/1E+6):4 w l dt 101 ti 'As-76','mf6mt5/g_34-Se-80_3443.resid' i 102 u ($1/1E+6):4 w l dt 102 ti 'As-77','mf6mt5/g_34-Se-80_3443.resid' i 103 u ($1/1E+6):4 w l dt 103 ti 'As-78','mf6mt5/g_34-Se-80_3443.resid' i 104 u ($1/1E+6):4 w l dt 104 ti 'As-79','mf6mt5/g_34-Se-80_3443.resid' i 105 u ($1/1E+6):4 w l dt 105 ti 'Se-71','mf6mt5/g_34-Se-80_3443.resid' i 106 u ($1/1E+6):4 w l dt 106 ti 'Se-72','mf6mt5/g_34-Se-80_3443.resid' i 107 u ($1/1E+6):4 w l dt 107 ti 'Se-73','mf6mt5/g_34-Se-80_3443.resid' i 108 u ($1/1E+6):4 w l dt 108 ti 'Se-73','mf6mt5/g_34-Se-80_3443.resid' i 109 u ($1/1E+6):4 w l dt 109 ti 'Se-74','mf6mt5/g_34-Se-80_3443.resid' i 110 u ($1/1E+6):4 w l dt 110 ti 'Se-75','mf6mt5/g_34-Se-80_3443.resid' i 111 u ($1/1E+6):4 w l dt 111 ti 'Se-76','mf6mt5/g_34-Se-80_3443.resid' i 112 u ($1/1E+6):4 w l dt 112 ti 'Se-77','mf6mt5/g_34-Se-80_3443.resid' i 113 u ($1/1E+6):4 w l dt 113 ti 'Se-77','mf6mt5/g_34-Se-80_3443.resid' i 114 u ($1/1E+6):4 w l dt 114 ti 'Se-78','mf6mt5/g_34-Se-80_3443.resid' i 115 u ($1/1E+6):4 w l dt 115 ti 'Se-79','mf6mt5/g_34-Se-80_3443.resid' i 116 u ($1/1E+6):4 w l dt 116 ti 'Se-79','mf6mt5/g_34-Se-80_3443.resid' i 117 u ($1/1E+6):4 w l dt 117 ti 'Se-80','mf6mt5/g_34-Se-80_3443.resid' i 118 u ($1/1E+6):4 w l dt 118 ti 'g',