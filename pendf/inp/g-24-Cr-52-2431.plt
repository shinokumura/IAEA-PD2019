set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_24-Cr-52_2431.eps'
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
set title '24-Cr-52-2431.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_24-Cr-52_2431.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_24-Cr-52_2431.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 6 u ($1/1E+6):3 ti 'Mg-22' w l dt 6 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 7 u ($1/1E+6):3 ti 'Mg-23' w l dt 7 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 8 u ($1/1E+6):3 ti 'Mg-24' w l dt 8 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 9 u ($1/1E+6):3 ti 'Mg-25' w l dt 9 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 10 u ($1/1E+6):3 ti 'Mg-26' w l dt 10 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 11 u ($1/1E+6):3 ti 'Mg-27' w l dt 11 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 12 u ($1/1E+6):3 ti 'Mg-28' w l dt 12 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 13 u ($1/1E+6):3 ti 'Mg-29' w l dt 13 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 14 u ($1/1E+6):3 ti 'Mg-30' w l dt 14 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 15 u ($1/1E+6):3 ti 'Mg-31' w l dt 15 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 16 u ($1/1E+6):3 ti 'Mg-32' w l dt 16 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 17 u ($1/1E+6):3 ti 'Mg-33' w l dt 17 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 18 u ($1/1E+6):3 ti 'Mg-34' w l dt 18 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 19 u ($1/1E+6):3 ti 'Mg-35' w l dt 19 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 20 u ($1/1E+6):3 ti 'Mg-36' w l dt 20 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 21 u ($1/1E+6):3 ti 'Al-23' w l dt 21 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 22 u ($1/1E+6):3 ti 'Al-24' w l dt 22 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 23 u ($1/1E+6):3 ti 'Al-24' w l dt 23 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 24 u ($1/1E+6):3 ti 'Al-25' w l dt 24 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 25 u ($1/1E+6):3 ti 'Al-26' w l dt 25 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 26 u ($1/1E+6):3 ti 'Al-26' w l dt 26 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 27 u ($1/1E+6):3 ti 'Al-27' w l dt 27 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 28 u ($1/1E+6):3 ti 'Al-28' w l dt 28 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 29 u ($1/1E+6):3 ti 'Al-29' w l dt 29 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 30 u ($1/1E+6):3 ti 'Al-30' w l dt 30 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 31 u ($1/1E+6):3 ti 'Al-31' w l dt 31 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 32 u ($1/1E+6):3 ti 'Al-32' w l dt 32 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 33 u ($1/1E+6):3 ti 'Al-33' w l dt 33 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 34 u ($1/1E+6):3 ti 'Al-34' w l dt 34 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 35 u ($1/1E+6):3 ti 'Al-35' w l dt 35 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 36 u ($1/1E+6):3 ti 'Al-36' w l dt 36 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 37 u ($1/1E+6):3 ti 'Al-37' w l dt 37 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 38 u ($1/1E+6):3 ti 'Al-38' w l dt 38 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 39 u ($1/1E+6):3 ti 'Al-39' w l dt 39 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 40 u ($1/1E+6):3 ti 'Si-24' w l dt 40 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 41 u ($1/1E+6):3 ti 'Si-25' w l dt 41 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 42 u ($1/1E+6):3 ti 'Si-26' w l dt 42 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 43 u ($1/1E+6):3 ti 'Si-27' w l dt 43 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 44 u ($1/1E+6):3 ti 'Si-28' w l dt 44 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 45 u ($1/1E+6):3 ti 'Si-29' w l dt 45 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 46 u ($1/1E+6):3 ti 'Si-30' w l dt 46 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 47 u ($1/1E+6):3 ti 'Si-31' w l dt 47 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 48 u ($1/1E+6):3 ti 'Si-32' w l dt 48 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 49 u ($1/1E+6):3 ti 'Si-33' w l dt 49 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 50 u ($1/1E+6):3 ti 'Si-34' w l dt 50 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 51 u ($1/1E+6):3 ti 'Si-35' w l dt 51 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 52 u ($1/1E+6):3 ti 'Si-36' w l dt 52 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 53 u ($1/1E+6):3 ti 'Si-37' w l dt 53 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 54 u ($1/1E+6):3 ti 'Si-38' w l dt 54 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 55 u ($1/1E+6):3 ti 'Si-39' w l dt 55 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 56 u ($1/1E+6):3 ti 'Si-40' w l dt 56 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 57 u ($1/1E+6):3 ti 'Si-41' w l dt 57 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 58 u ($1/1E+6):3 ti 'P-25' w l dt 58 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 59 u ($1/1E+6):3 ti 'P-26' w l dt 59 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 60 u ($1/1E+6):3 ti 'P-27' w l dt 60 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 61 u ($1/1E+6):3 ti 'P-28' w l dt 61 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 62 u ($1/1E+6):3 ti 'P-29' w l dt 62 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 63 u ($1/1E+6):3 ti 'P-30' w l dt 63 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 64 u ($1/1E+6):3 ti 'P-31' w l dt 64 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 65 u ($1/1E+6):3 ti 'P-32' w l dt 65 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 66 u ($1/1E+6):3 ti 'P-33' w l dt 66 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 67 u ($1/1E+6):3 ti 'P-34' w l dt 67 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 68 u ($1/1E+6):3 ti 'P-35' w l dt 68 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 69 u ($1/1E+6):3 ti 'P-36' w l dt 69 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 70 u ($1/1E+6):3 ti 'P-37' w l dt 70 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 71 u ($1/1E+6):3 ti 'P-38' w l dt 71 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 72 u ($1/1E+6):3 ti 'P-39' w l dt 72 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 73 u ($1/1E+6):3 ti 'P-40' w l dt 73 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 74 u ($1/1E+6):3 ti 'P-41' w l dt 74 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 75 u ($1/1E+6):3 ti 'P-42' w l dt 75 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 76 u ($1/1E+6):3 ti 'S-27' w l dt 76 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 77 u ($1/1E+6):3 ti 'S-28' w l dt 77 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 78 u ($1/1E+6):3 ti 'S-29' w l dt 78 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 79 u ($1/1E+6):3 ti 'S-30' w l dt 79 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 80 u ($1/1E+6):3 ti 'S-31' w l dt 80 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 81 u ($1/1E+6):3 ti 'S-32' w l dt 81 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 82 u ($1/1E+6):3 ti 'S-33' w l dt 82 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 83 u ($1/1E+6):3 ti 'S-34' w l dt 83 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 84 u ($1/1E+6):3 ti 'S-35' w l dt 84 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 85 u ($1/1E+6):3 ti 'S-36' w l dt 85 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 86 u ($1/1E+6):3 ti 'S-37' w l dt 86 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 87 u ($1/1E+6):3 ti 'S-38' w l dt 87 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 88 u ($1/1E+6):3 ti 'S-39' w l dt 88 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 89 u ($1/1E+6):3 ti 'S-40' w l dt 89 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 90 u ($1/1E+6):3 ti 'S-41' w l dt 90 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 91 u ($1/1E+6):3 ti 'S-42' w l dt 91 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 92 u ($1/1E+6):3 ti 'S-43' w l dt 92 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 93 u ($1/1E+6):3 ti 'Cl-29' w l dt 93 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 94 u ($1/1E+6):3 ti 'Cl-30' w l dt 94 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 95 u ($1/1E+6):3 ti 'Cl-31' w l dt 95 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 96 u ($1/1E+6):3 ti 'Cl-32' w l dt 96 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 97 u ($1/1E+6):3 ti 'Cl-33' w l dt 97 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 98 u ($1/1E+6):3 ti 'Cl-34' w l dt 98 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 99 u ($1/1E+6):3 ti 'Cl-34' w l dt 99 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 100 u ($1/1E+6):3 ti 'Cl-35' w l dt 100 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 101 u ($1/1E+6):3 ti 'Cl-36' w l dt 101 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 102 u ($1/1E+6):3 ti 'Cl-37' w l dt 102 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 103 u ($1/1E+6):3 ti 'Cl-38' w l dt 103 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 104 u ($1/1E+6):3 ti 'Cl-38' w l dt 104 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 105 u ($1/1E+6):3 ti 'Cl-39' w l dt 105 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 106 u ($1/1E+6):3 ti 'Cl-40' w l dt 106 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 107 u ($1/1E+6):3 ti 'Cl-41' w l dt 107 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 108 u ($1/1E+6):3 ti 'Cl-42' w l dt 108 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 109 u ($1/1E+6):3 ti 'Cl-43' w l dt 109 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 110 u ($1/1E+6):3 ti 'Cl-44' w l dt 110 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 111 u ($1/1E+6):3 ti 'Cl-45' w l dt 111 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 112 u ($1/1E+6):3 ti 'Ar-31' w l dt 112 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 113 u ($1/1E+6):3 ti 'Ar-32' w l dt 113 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 114 u ($1/1E+6):3 ti 'Ar-33' w l dt 114 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 115 u ($1/1E+6):3 ti 'Ar-34' w l dt 115 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 116 u ($1/1E+6):3 ti 'Ar-35' w l dt 116 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 117 u ($1/1E+6):3 ti 'Ar-36' w l dt 117 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 118 u ($1/1E+6):3 ti 'Ar-37' w l dt 118 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 119 u ($1/1E+6):3 ti 'Ar-38' w l dt 119 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 120 u ($1/1E+6):3 ti 'Ar-39' w l dt 120 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 121 u ($1/1E+6):3 ti 'Ar-40' w l dt 121 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 122 u ($1/1E+6):3 ti 'Ar-41' w l dt 122 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 123 u ($1/1E+6):3 ti 'Ar-42' w l dt 123 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 124 u ($1/1E+6):3 ti 'Ar-43' w l dt 124 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 125 u ($1/1E+6):3 ti 'Ar-44' w l dt 125 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 126 u ($1/1E+6):3 ti 'Ar-45' w l dt 126 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 127 u ($1/1E+6):3 ti 'Ar-46' w l dt 127 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 128 u ($1/1E+6):3 ti 'K-32' w l dt 128 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 129 u ($1/1E+6):3 ti 'K-33' w l dt 129 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 130 u ($1/1E+6):3 ti 'K-34' w l dt 130 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 131 u ($1/1E+6):3 ti 'K-35' w l dt 131 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 132 u ($1/1E+6):3 ti 'K-36' w l dt 132 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 133 u ($1/1E+6):3 ti 'K-37' w l dt 133 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 134 u ($1/1E+6):3 ti 'K-38' w l dt 134 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 135 u ($1/1E+6):3 ti 'K-38' w l dt 135 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 136 u ($1/1E+6):3 ti 'K-39' w l dt 136 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 137 u ($1/1E+6):3 ti 'K-40' w l dt 137 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 138 u ($1/1E+6):3 ti 'K-41' w l dt 138 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 139 u ($1/1E+6):3 ti 'K-42' w l dt 139 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 140 u ($1/1E+6):3 ti 'K-43' w l dt 140 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 141 u ($1/1E+6):3 ti 'K-44' w l dt 141 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 142 u ($1/1E+6):3 ti 'K-45' w l dt 142 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 143 u ($1/1E+6):3 ti 'K-46' w l dt 143 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 144 u ($1/1E+6):3 ti 'K-47' w l dt 144 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 145 u ($1/1E+6):3 ti 'Ca-34' w l dt 145 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 146 u ($1/1E+6):3 ti 'Ca-35' w l dt 146 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 147 u ($1/1E+6):3 ti 'Ca-36' w l dt 147 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 148 u ($1/1E+6):3 ti 'Ca-37' w l dt 148 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 149 u ($1/1E+6):3 ti 'Ca-38' w l dt 149 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 150 u ($1/1E+6):3 ti 'Ca-39' w l dt 150 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 151 u ($1/1E+6):3 ti 'Ca-40' w l dt 151 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 152 u ($1/1E+6):3 ti 'Ca-41' w l dt 152 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 153 u ($1/1E+6):3 ti 'Ca-42' w l dt 153 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 154 u ($1/1E+6):3 ti 'Ca-43' w l dt 154 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 155 u ($1/1E+6):3 ti 'Ca-44' w l dt 155 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 156 u ($1/1E+6):3 ti 'Ca-45' w l dt 156 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 157 u ($1/1E+6):3 ti 'Ca-46' w l dt 157 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 158 u ($1/1E+6):3 ti 'Ca-47' w l dt 158 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 159 u ($1/1E+6):3 ti 'Ca-48' w l dt 159 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 160 u ($1/1E+6):3 ti 'Sc-36' w l dt 160 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 161 u ($1/1E+6):3 ti 'Sc-37' w l dt 161 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 162 u ($1/1E+6):3 ti 'Sc-38' w l dt 162 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 163 u ($1/1E+6):3 ti 'Sc-39' w l dt 163 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 164 u ($1/1E+6):3 ti 'Sc-40' w l dt 164 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 165 u ($1/1E+6):3 ti 'Sc-41' w l dt 165 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 166 u ($1/1E+6):3 ti 'Sc-42' w l dt 166 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 167 u ($1/1E+6):3 ti 'Sc-42' w l dt 167 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 168 u ($1/1E+6):3 ti 'Sc-43' w l dt 168 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 169 u ($1/1E+6):3 ti 'Sc-44' w l dt 169 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 170 u ($1/1E+6):3 ti 'Sc-44' w l dt 170 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 171 u ($1/1E+6):3 ti 'Sc-45' w l dt 171 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 172 u ($1/1E+6):3 ti 'Sc-45' w l dt 172 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 173 u ($1/1E+6):3 ti 'Sc-46' w l dt 173 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 174 u ($1/1E+6):3 ti 'Sc-46' w l dt 174 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 175 u ($1/1E+6):3 ti 'Sc-47' w l dt 175 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 176 u ($1/1E+6):3 ti 'Sc-48' w l dt 176 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 177 u ($1/1E+6):3 ti 'Sc-49' w l dt 177 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 178 u ($1/1E+6):3 ti 'Ti-38' w l dt 178 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 179 u ($1/1E+6):3 ti 'Ti-39' w l dt 179 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 180 u ($1/1E+6):3 ti 'Ti-40' w l dt 180 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 181 u ($1/1E+6):3 ti 'Ti-41' w l dt 181 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 182 u ($1/1E+6):3 ti 'Ti-42' w l dt 182 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 183 u ($1/1E+6):3 ti 'Ti-43' w l dt 183 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 184 u ($1/1E+6):3 ti 'Ti-44' w l dt 184 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 185 u ($1/1E+6):3 ti 'Ti-45' w l dt 185 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 186 u ($1/1E+6):3 ti 'Ti-46' w l dt 186 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 187 u ($1/1E+6):3 ti 'Ti-47' w l dt 187 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 188 u ($1/1E+6):3 ti 'Ti-48' w l dt 188 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 189 u ($1/1E+6):3 ti 'Ti-48' w l dt 189 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 190 u ($1/1E+6):3 ti 'Ti-49' w l dt 190 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 191 u ($1/1E+6):3 ti 'Ti-50' w l dt 191 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 192 u ($1/1E+6):3 ti 'V-40' w l dt 192 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 193 u ($1/1E+6):3 ti 'V-41' w l dt 193 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 194 u ($1/1E+6):3 ti 'V-42' w l dt 194 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 195 u ($1/1E+6):3 ti 'V-43' w l dt 195 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 196 u ($1/1E+6):3 ti 'V-44' w l dt 196 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 197 u ($1/1E+6):3 ti 'V-44' w l dt 197 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 198 u ($1/1E+6):3 ti 'V-45' w l dt 198 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 199 u ($1/1E+6):3 ti 'V-46' w l dt 199 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 200 u ($1/1E+6):3 ti 'V-47' w l dt 200 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 201 u ($1/1E+6):3 ti 'V-48' w l dt 201 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 202 u ($1/1E+6):3 ti 'V-49' w l dt 202 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 203 u ($1/1E+6):3 ti 'V-50' w l dt 203 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 204 u ($1/1E+6):3 ti 'V-51' w l dt 204 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 205 u ($1/1E+6):3 ti 'Cr-42' w l dt 205 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 206 u ($1/1E+6):3 ti 'Cr-43' w l dt 206 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 207 u ($1/1E+6):3 ti 'Cr-44' w l dt 207 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 208 u ($1/1E+6):3 ti 'Cr-45' w l dt 208 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 209 u ($1/1E+6):3 ti 'Cr-46' w l dt 209 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 210 u ($1/1E+6):3 ti 'Cr-47' w l dt 210 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 211 u ($1/1E+6):3 ti 'Cr-48' w l dt 211 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 212 u ($1/1E+6):3 ti 'Cr-49' w l dt 212 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 213 u ($1/1E+6):3 ti 'Cr-50' w l dt 213 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 214 u ($1/1E+6):3 ti 'Cr-51' w l dt 214 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 215 u ($1/1E+6):3 ti 'Cr-52' w l dt 215 axes x1y2,'mf6mt5/g_24-Cr-52_2431.resid' i 216 u ($1/1E+6):3 ti 'g' w l dt 216 axes x1y2,

set output 'eps-log/g_24-Cr-52_2431.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_24-Cr-52_2431.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_24-Cr-52_2431.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_24-Cr-52_2431.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_24-Cr-52_2431.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_24-Cr-52_2431.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_24-Cr-52_2431.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_24-Cr-52_2431.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_24-Cr-52_2431.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'Mg-22','mf6mt5/g_24-Cr-52_2431.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'Mg-23','mf6mt5/g_24-Cr-52_2431.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'Mg-24','mf6mt5/g_24-Cr-52_2431.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Mg-25','mf6mt5/g_24-Cr-52_2431.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Mg-26','mf6mt5/g_24-Cr-52_2431.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Mg-27','mf6mt5/g_24-Cr-52_2431.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Mg-28','mf6mt5/g_24-Cr-52_2431.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Mg-29','mf6mt5/g_24-Cr-52_2431.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Mg-30','mf6mt5/g_24-Cr-52_2431.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Mg-31','mf6mt5/g_24-Cr-52_2431.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'Mg-32','mf6mt5/g_24-Cr-52_2431.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'Mg-33','mf6mt5/g_24-Cr-52_2431.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'Mg-34','mf6mt5/g_24-Cr-52_2431.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'Mg-35','mf6mt5/g_24-Cr-52_2431.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'Mg-36','mf6mt5/g_24-Cr-52_2431.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'Al-23','mf6mt5/g_24-Cr-52_2431.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'Al-24','mf6mt5/g_24-Cr-52_2431.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'Al-24','mf6mt5/g_24-Cr-52_2431.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'Al-25','mf6mt5/g_24-Cr-52_2431.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'Al-26','mf6mt5/g_24-Cr-52_2431.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'Al-26','mf6mt5/g_24-Cr-52_2431.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'Al-27','mf6mt5/g_24-Cr-52_2431.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'Al-28','mf6mt5/g_24-Cr-52_2431.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'Al-29','mf6mt5/g_24-Cr-52_2431.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'Al-30','mf6mt5/g_24-Cr-52_2431.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'Al-31','mf6mt5/g_24-Cr-52_2431.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'Al-32','mf6mt5/g_24-Cr-52_2431.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'Al-33','mf6mt5/g_24-Cr-52_2431.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'Al-34','mf6mt5/g_24-Cr-52_2431.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'Al-35','mf6mt5/g_24-Cr-52_2431.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'Al-36','mf6mt5/g_24-Cr-52_2431.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'Al-37','mf6mt5/g_24-Cr-52_2431.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'Al-38','mf6mt5/g_24-Cr-52_2431.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'Al-39','mf6mt5/g_24-Cr-52_2431.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'Si-24','mf6mt5/g_24-Cr-52_2431.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'Si-25','mf6mt5/g_24-Cr-52_2431.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'Si-26','mf6mt5/g_24-Cr-52_2431.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'Si-27','mf6mt5/g_24-Cr-52_2431.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'Si-28','mf6mt5/g_24-Cr-52_2431.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'Si-29','mf6mt5/g_24-Cr-52_2431.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'Si-30','mf6mt5/g_24-Cr-52_2431.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'Si-31','mf6mt5/g_24-Cr-52_2431.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'Si-32','mf6mt5/g_24-Cr-52_2431.resid' i 49 u ($1/1E+6):4 w l dt 49 ti 'Si-33','mf6mt5/g_24-Cr-52_2431.resid' i 50 u ($1/1E+6):4 w l dt 50 ti 'Si-34','mf6mt5/g_24-Cr-52_2431.resid' i 51 u ($1/1E+6):4 w l dt 51 ti 'Si-35','mf6mt5/g_24-Cr-52_2431.resid' i 52 u ($1/1E+6):4 w l dt 52 ti 'Si-36','mf6mt5/g_24-Cr-52_2431.resid' i 53 u ($1/1E+6):4 w l dt 53 ti 'Si-37','mf6mt5/g_24-Cr-52_2431.resid' i 54 u ($1/1E+6):4 w l dt 54 ti 'Si-38','mf6mt5/g_24-Cr-52_2431.resid' i 55 u ($1/1E+6):4 w l dt 55 ti 'Si-39','mf6mt5/g_24-Cr-52_2431.resid' i 56 u ($1/1E+6):4 w l dt 56 ti 'Si-40','mf6mt5/g_24-Cr-52_2431.resid' i 57 u ($1/1E+6):4 w l dt 57 ti 'Si-41','mf6mt5/g_24-Cr-52_2431.resid' i 58 u ($1/1E+6):4 w l dt 58 ti 'P-25','mf6mt5/g_24-Cr-52_2431.resid' i 59 u ($1/1E+6):4 w l dt 59 ti 'P-26','mf6mt5/g_24-Cr-52_2431.resid' i 60 u ($1/1E+6):4 w l dt 60 ti 'P-27','mf6mt5/g_24-Cr-52_2431.resid' i 61 u ($1/1E+6):4 w l dt 61 ti 'P-28','mf6mt5/g_24-Cr-52_2431.resid' i 62 u ($1/1E+6):4 w l dt 62 ti 'P-29','mf6mt5/g_24-Cr-52_2431.resid' i 63 u ($1/1E+6):4 w l dt 63 ti 'P-30','mf6mt5/g_24-Cr-52_2431.resid' i 64 u ($1/1E+6):4 w l dt 64 ti 'P-31','mf6mt5/g_24-Cr-52_2431.resid' i 65 u ($1/1E+6):4 w l dt 65 ti 'P-32','mf6mt5/g_24-Cr-52_2431.resid' i 66 u ($1/1E+6):4 w l dt 66 ti 'P-33','mf6mt5/g_24-Cr-52_2431.resid' i 67 u ($1/1E+6):4 w l dt 67 ti 'P-34','mf6mt5/g_24-Cr-52_2431.resid' i 68 u ($1/1E+6):4 w l dt 68 ti 'P-35','mf6mt5/g_24-Cr-52_2431.resid' i 69 u ($1/1E+6):4 w l dt 69 ti 'P-36','mf6mt5/g_24-Cr-52_2431.resid' i 70 u ($1/1E+6):4 w l dt 70 ti 'P-37','mf6mt5/g_24-Cr-52_2431.resid' i 71 u ($1/1E+6):4 w l dt 71 ti 'P-38','mf6mt5/g_24-Cr-52_2431.resid' i 72 u ($1/1E+6):4 w l dt 72 ti 'P-39','mf6mt5/g_24-Cr-52_2431.resid' i 73 u ($1/1E+6):4 w l dt 73 ti 'P-40','mf6mt5/g_24-Cr-52_2431.resid' i 74 u ($1/1E+6):4 w l dt 74 ti 'P-41','mf6mt5/g_24-Cr-52_2431.resid' i 75 u ($1/1E+6):4 w l dt 75 ti 'P-42','mf6mt5/g_24-Cr-52_2431.resid' i 76 u ($1/1E+6):4 w l dt 76 ti 'S-27','mf6mt5/g_24-Cr-52_2431.resid' i 77 u ($1/1E+6):4 w l dt 77 ti 'S-28','mf6mt5/g_24-Cr-52_2431.resid' i 78 u ($1/1E+6):4 w l dt 78 ti 'S-29','mf6mt5/g_24-Cr-52_2431.resid' i 79 u ($1/1E+6):4 w l dt 79 ti 'S-30','mf6mt5/g_24-Cr-52_2431.resid' i 80 u ($1/1E+6):4 w l dt 80 ti 'S-31','mf6mt5/g_24-Cr-52_2431.resid' i 81 u ($1/1E+6):4 w l dt 81 ti 'S-32','mf6mt5/g_24-Cr-52_2431.resid' i 82 u ($1/1E+6):4 w l dt 82 ti 'S-33','mf6mt5/g_24-Cr-52_2431.resid' i 83 u ($1/1E+6):4 w l dt 83 ti 'S-34','mf6mt5/g_24-Cr-52_2431.resid' i 84 u ($1/1E+6):4 w l dt 84 ti 'S-35','mf6mt5/g_24-Cr-52_2431.resid' i 85 u ($1/1E+6):4 w l dt 85 ti 'S-36','mf6mt5/g_24-Cr-52_2431.resid' i 86 u ($1/1E+6):4 w l dt 86 ti 'S-37','mf6mt5/g_24-Cr-52_2431.resid' i 87 u ($1/1E+6):4 w l dt 87 ti 'S-38','mf6mt5/g_24-Cr-52_2431.resid' i 88 u ($1/1E+6):4 w l dt 88 ti 'S-39','mf6mt5/g_24-Cr-52_2431.resid' i 89 u ($1/1E+6):4 w l dt 89 ti 'S-40','mf6mt5/g_24-Cr-52_2431.resid' i 90 u ($1/1E+6):4 w l dt 90 ti 'S-41','mf6mt5/g_24-Cr-52_2431.resid' i 91 u ($1/1E+6):4 w l dt 91 ti 'S-42','mf6mt5/g_24-Cr-52_2431.resid' i 92 u ($1/1E+6):4 w l dt 92 ti 'S-43','mf6mt5/g_24-Cr-52_2431.resid' i 93 u ($1/1E+6):4 w l dt 93 ti 'Cl-29','mf6mt5/g_24-Cr-52_2431.resid' i 94 u ($1/1E+6):4 w l dt 94 ti 'Cl-30','mf6mt5/g_24-Cr-52_2431.resid' i 95 u ($1/1E+6):4 w l dt 95 ti 'Cl-31','mf6mt5/g_24-Cr-52_2431.resid' i 96 u ($1/1E+6):4 w l dt 96 ti 'Cl-32','mf6mt5/g_24-Cr-52_2431.resid' i 97 u ($1/1E+6):4 w l dt 97 ti 'Cl-33','mf6mt5/g_24-Cr-52_2431.resid' i 98 u ($1/1E+6):4 w l dt 98 ti 'Cl-34','mf6mt5/g_24-Cr-52_2431.resid' i 99 u ($1/1E+6):4 w l dt 99 ti 'Cl-34','mf6mt5/g_24-Cr-52_2431.resid' i 100 u ($1/1E+6):4 w l dt 100 ti 'Cl-35','mf6mt5/g_24-Cr-52_2431.resid' i 101 u ($1/1E+6):4 w l dt 101 ti 'Cl-36','mf6mt5/g_24-Cr-52_2431.resid' i 102 u ($1/1E+6):4 w l dt 102 ti 'Cl-37','mf6mt5/g_24-Cr-52_2431.resid' i 103 u ($1/1E+6):4 w l dt 103 ti 'Cl-38','mf6mt5/g_24-Cr-52_2431.resid' i 104 u ($1/1E+6):4 w l dt 104 ti 'Cl-38','mf6mt5/g_24-Cr-52_2431.resid' i 105 u ($1/1E+6):4 w l dt 105 ti 'Cl-39','mf6mt5/g_24-Cr-52_2431.resid' i 106 u ($1/1E+6):4 w l dt 106 ti 'Cl-40','mf6mt5/g_24-Cr-52_2431.resid' i 107 u ($1/1E+6):4 w l dt 107 ti 'Cl-41','mf6mt5/g_24-Cr-52_2431.resid' i 108 u ($1/1E+6):4 w l dt 108 ti 'Cl-42','mf6mt5/g_24-Cr-52_2431.resid' i 109 u ($1/1E+6):4 w l dt 109 ti 'Cl-43','mf6mt5/g_24-Cr-52_2431.resid' i 110 u ($1/1E+6):4 w l dt 110 ti 'Cl-44','mf6mt5/g_24-Cr-52_2431.resid' i 111 u ($1/1E+6):4 w l dt 111 ti 'Cl-45','mf6mt5/g_24-Cr-52_2431.resid' i 112 u ($1/1E+6):4 w l dt 112 ti 'Ar-31','mf6mt5/g_24-Cr-52_2431.resid' i 113 u ($1/1E+6):4 w l dt 113 ti 'Ar-32','mf6mt5/g_24-Cr-52_2431.resid' i 114 u ($1/1E+6):4 w l dt 114 ti 'Ar-33','mf6mt5/g_24-Cr-52_2431.resid' i 115 u ($1/1E+6):4 w l dt 115 ti 'Ar-34','mf6mt5/g_24-Cr-52_2431.resid' i 116 u ($1/1E+6):4 w l dt 116 ti 'Ar-35','mf6mt5/g_24-Cr-52_2431.resid' i 117 u ($1/1E+6):4 w l dt 117 ti 'Ar-36','mf6mt5/g_24-Cr-52_2431.resid' i 118 u ($1/1E+6):4 w l dt 118 ti 'Ar-37','mf6mt5/g_24-Cr-52_2431.resid' i 119 u ($1/1E+6):4 w l dt 119 ti 'Ar-38','mf6mt5/g_24-Cr-52_2431.resid' i 120 u ($1/1E+6):4 w l dt 120 ti 'Ar-39','mf6mt5/g_24-Cr-52_2431.resid' i 121 u ($1/1E+6):4 w l dt 121 ti 'Ar-40','mf6mt5/g_24-Cr-52_2431.resid' i 122 u ($1/1E+6):4 w l dt 122 ti 'Ar-41','mf6mt5/g_24-Cr-52_2431.resid' i 123 u ($1/1E+6):4 w l dt 123 ti 'Ar-42','mf6mt5/g_24-Cr-52_2431.resid' i 124 u ($1/1E+6):4 w l dt 124 ti 'Ar-43','mf6mt5/g_24-Cr-52_2431.resid' i 125 u ($1/1E+6):4 w l dt 125 ti 'Ar-44','mf6mt5/g_24-Cr-52_2431.resid' i 126 u ($1/1E+6):4 w l dt 126 ti 'Ar-45','mf6mt5/g_24-Cr-52_2431.resid' i 127 u ($1/1E+6):4 w l dt 127 ti 'Ar-46','mf6mt5/g_24-Cr-52_2431.resid' i 128 u ($1/1E+6):4 w l dt 128 ti 'K-32','mf6mt5/g_24-Cr-52_2431.resid' i 129 u ($1/1E+6):4 w l dt 129 ti 'K-33','mf6mt5/g_24-Cr-52_2431.resid' i 130 u ($1/1E+6):4 w l dt 130 ti 'K-34','mf6mt5/g_24-Cr-52_2431.resid' i 131 u ($1/1E+6):4 w l dt 131 ti 'K-35','mf6mt5/g_24-Cr-52_2431.resid' i 132 u ($1/1E+6):4 w l dt 132 ti 'K-36','mf6mt5/g_24-Cr-52_2431.resid' i 133 u ($1/1E+6):4 w l dt 133 ti 'K-37','mf6mt5/g_24-Cr-52_2431.resid' i 134 u ($1/1E+6):4 w l dt 134 ti 'K-38','mf6mt5/g_24-Cr-52_2431.resid' i 135 u ($1/1E+6):4 w l dt 135 ti 'K-38','mf6mt5/g_24-Cr-52_2431.resid' i 136 u ($1/1E+6):4 w l dt 136 ti 'K-39','mf6mt5/g_24-Cr-52_2431.resid' i 137 u ($1/1E+6):4 w l dt 137 ti 'K-40','mf6mt5/g_24-Cr-52_2431.resid' i 138 u ($1/1E+6):4 w l dt 138 ti 'K-41','mf6mt5/g_24-Cr-52_2431.resid' i 139 u ($1/1E+6):4 w l dt 139 ti 'K-42','mf6mt5/g_24-Cr-52_2431.resid' i 140 u ($1/1E+6):4 w l dt 140 ti 'K-43','mf6mt5/g_24-Cr-52_2431.resid' i 141 u ($1/1E+6):4 w l dt 141 ti 'K-44','mf6mt5/g_24-Cr-52_2431.resid' i 142 u ($1/1E+6):4 w l dt 142 ti 'K-45','mf6mt5/g_24-Cr-52_2431.resid' i 143 u ($1/1E+6):4 w l dt 143 ti 'K-46','mf6mt5/g_24-Cr-52_2431.resid' i 144 u ($1/1E+6):4 w l dt 144 ti 'K-47','mf6mt5/g_24-Cr-52_2431.resid' i 145 u ($1/1E+6):4 w l dt 145 ti 'Ca-34','mf6mt5/g_24-Cr-52_2431.resid' i 146 u ($1/1E+6):4 w l dt 146 ti 'Ca-35','mf6mt5/g_24-Cr-52_2431.resid' i 147 u ($1/1E+6):4 w l dt 147 ti 'Ca-36','mf6mt5/g_24-Cr-52_2431.resid' i 148 u ($1/1E+6):4 w l dt 148 ti 'Ca-37','mf6mt5/g_24-Cr-52_2431.resid' i 149 u ($1/1E+6):4 w l dt 149 ti 'Ca-38','mf6mt5/g_24-Cr-52_2431.resid' i 150 u ($1/1E+6):4 w l dt 150 ti 'Ca-39','mf6mt5/g_24-Cr-52_2431.resid' i 151 u ($1/1E+6):4 w l dt 151 ti 'Ca-40','mf6mt5/g_24-Cr-52_2431.resid' i 152 u ($1/1E+6):4 w l dt 152 ti 'Ca-41','mf6mt5/g_24-Cr-52_2431.resid' i 153 u ($1/1E+6):4 w l dt 153 ti 'Ca-42','mf6mt5/g_24-Cr-52_2431.resid' i 154 u ($1/1E+6):4 w l dt 154 ti 'Ca-43','mf6mt5/g_24-Cr-52_2431.resid' i 155 u ($1/1E+6):4 w l dt 155 ti 'Ca-44','mf6mt5/g_24-Cr-52_2431.resid' i 156 u ($1/1E+6):4 w l dt 156 ti 'Ca-45','mf6mt5/g_24-Cr-52_2431.resid' i 157 u ($1/1E+6):4 w l dt 157 ti 'Ca-46','mf6mt5/g_24-Cr-52_2431.resid' i 158 u ($1/1E+6):4 w l dt 158 ti 'Ca-47','mf6mt5/g_24-Cr-52_2431.resid' i 159 u ($1/1E+6):4 w l dt 159 ti 'Ca-48','mf6mt5/g_24-Cr-52_2431.resid' i 160 u ($1/1E+6):4 w l dt 160 ti 'Sc-36','mf6mt5/g_24-Cr-52_2431.resid' i 161 u ($1/1E+6):4 w l dt 161 ti 'Sc-37','mf6mt5/g_24-Cr-52_2431.resid' i 162 u ($1/1E+6):4 w l dt 162 ti 'Sc-38','mf6mt5/g_24-Cr-52_2431.resid' i 163 u ($1/1E+6):4 w l dt 163 ti 'Sc-39','mf6mt5/g_24-Cr-52_2431.resid' i 164 u ($1/1E+6):4 w l dt 164 ti 'Sc-40','mf6mt5/g_24-Cr-52_2431.resid' i 165 u ($1/1E+6):4 w l dt 165 ti 'Sc-41','mf6mt5/g_24-Cr-52_2431.resid' i 166 u ($1/1E+6):4 w l dt 166 ti 'Sc-42','mf6mt5/g_24-Cr-52_2431.resid' i 167 u ($1/1E+6):4 w l dt 167 ti 'Sc-42','mf6mt5/g_24-Cr-52_2431.resid' i 168 u ($1/1E+6):4 w l dt 168 ti 'Sc-43','mf6mt5/g_24-Cr-52_2431.resid' i 169 u ($1/1E+6):4 w l dt 169 ti 'Sc-44','mf6mt5/g_24-Cr-52_2431.resid' i 170 u ($1/1E+6):4 w l dt 170 ti 'Sc-44','mf6mt5/g_24-Cr-52_2431.resid' i 171 u ($1/1E+6):4 w l dt 171 ti 'Sc-45','mf6mt5/g_24-Cr-52_2431.resid' i 172 u ($1/1E+6):4 w l dt 172 ti 'Sc-45','mf6mt5/g_24-Cr-52_2431.resid' i 173 u ($1/1E+6):4 w l dt 173 ti 'Sc-46','mf6mt5/g_24-Cr-52_2431.resid' i 174 u ($1/1E+6):4 w l dt 174 ti 'Sc-46','mf6mt5/g_24-Cr-52_2431.resid' i 175 u ($1/1E+6):4 w l dt 175 ti 'Sc-47','mf6mt5/g_24-Cr-52_2431.resid' i 176 u ($1/1E+6):4 w l dt 176 ti 'Sc-48','mf6mt5/g_24-Cr-52_2431.resid' i 177 u ($1/1E+6):4 w l dt 177 ti 'Sc-49','mf6mt5/g_24-Cr-52_2431.resid' i 178 u ($1/1E+6):4 w l dt 178 ti 'Ti-38','mf6mt5/g_24-Cr-52_2431.resid' i 179 u ($1/1E+6):4 w l dt 179 ti 'Ti-39','mf6mt5/g_24-Cr-52_2431.resid' i 180 u ($1/1E+6):4 w l dt 180 ti 'Ti-40','mf6mt5/g_24-Cr-52_2431.resid' i 181 u ($1/1E+6):4 w l dt 181 ti 'Ti-41','mf6mt5/g_24-Cr-52_2431.resid' i 182 u ($1/1E+6):4 w l dt 182 ti 'Ti-42','mf6mt5/g_24-Cr-52_2431.resid' i 183 u ($1/1E+6):4 w l dt 183 ti 'Ti-43','mf6mt5/g_24-Cr-52_2431.resid' i 184 u ($1/1E+6):4 w l dt 184 ti 'Ti-44','mf6mt5/g_24-Cr-52_2431.resid' i 185 u ($1/1E+6):4 w l dt 185 ti 'Ti-45','mf6mt5/g_24-Cr-52_2431.resid' i 186 u ($1/1E+6):4 w l dt 186 ti 'Ti-46','mf6mt5/g_24-Cr-52_2431.resid' i 187 u ($1/1E+6):4 w l dt 187 ti 'Ti-47','mf6mt5/g_24-Cr-52_2431.resid' i 188 u ($1/1E+6):4 w l dt 188 ti 'Ti-48','mf6mt5/g_24-Cr-52_2431.resid' i 189 u ($1/1E+6):4 w l dt 189 ti 'Ti-48','mf6mt5/g_24-Cr-52_2431.resid' i 190 u ($1/1E+6):4 w l dt 190 ti 'Ti-49','mf6mt5/g_24-Cr-52_2431.resid' i 191 u ($1/1E+6):4 w l dt 191 ti 'Ti-50','mf6mt5/g_24-Cr-52_2431.resid' i 192 u ($1/1E+6):4 w l dt 192 ti 'V-40','mf6mt5/g_24-Cr-52_2431.resid' i 193 u ($1/1E+6):4 w l dt 193 ti 'V-41','mf6mt5/g_24-Cr-52_2431.resid' i 194 u ($1/1E+6):4 w l dt 194 ti 'V-42','mf6mt5/g_24-Cr-52_2431.resid' i 195 u ($1/1E+6):4 w l dt 195 ti 'V-43','mf6mt5/g_24-Cr-52_2431.resid' i 196 u ($1/1E+6):4 w l dt 196 ti 'V-44','mf6mt5/g_24-Cr-52_2431.resid' i 197 u ($1/1E+6):4 w l dt 197 ti 'V-44','mf6mt5/g_24-Cr-52_2431.resid' i 198 u ($1/1E+6):4 w l dt 198 ti 'V-45','mf6mt5/g_24-Cr-52_2431.resid' i 199 u ($1/1E+6):4 w l dt 199 ti 'V-46','mf6mt5/g_24-Cr-52_2431.resid' i 200 u ($1/1E+6):4 w l dt 200 ti 'V-47','mf6mt5/g_24-Cr-52_2431.resid' i 201 u ($1/1E+6):4 w l dt 201 ti 'V-48','mf6mt5/g_24-Cr-52_2431.resid' i 202 u ($1/1E+6):4 w l dt 202 ti 'V-49','mf6mt5/g_24-Cr-52_2431.resid' i 203 u ($1/1E+6):4 w l dt 203 ti 'V-50','mf6mt5/g_24-Cr-52_2431.resid' i 204 u ($1/1E+6):4 w l dt 204 ti 'V-51','mf6mt5/g_24-Cr-52_2431.resid' i 205 u ($1/1E+6):4 w l dt 205 ti 'Cr-42','mf6mt5/g_24-Cr-52_2431.resid' i 206 u ($1/1E+6):4 w l dt 206 ti 'Cr-43','mf6mt5/g_24-Cr-52_2431.resid' i 207 u ($1/1E+6):4 w l dt 207 ti 'Cr-44','mf6mt5/g_24-Cr-52_2431.resid' i 208 u ($1/1E+6):4 w l dt 208 ti 'Cr-45','mf6mt5/g_24-Cr-52_2431.resid' i 209 u ($1/1E+6):4 w l dt 209 ti 'Cr-46','mf6mt5/g_24-Cr-52_2431.resid' i 210 u ($1/1E+6):4 w l dt 210 ti 'Cr-47','mf6mt5/g_24-Cr-52_2431.resid' i 211 u ($1/1E+6):4 w l dt 211 ti 'Cr-48','mf6mt5/g_24-Cr-52_2431.resid' i 212 u ($1/1E+6):4 w l dt 212 ti 'Cr-49','mf6mt5/g_24-Cr-52_2431.resid' i 213 u ($1/1E+6):4 w l dt 213 ti 'Cr-50','mf6mt5/g_24-Cr-52_2431.resid' i 214 u ($1/1E+6):4 w l dt 214 ti 'Cr-51','mf6mt5/g_24-Cr-52_2431.resid' i 215 u ($1/1E+6):4 w l dt 215 ti 'Cr-52','mf6mt5/g_24-Cr-52_2431.resid' i 216 u ($1/1E+6):4 w l dt 216 ti 'g',