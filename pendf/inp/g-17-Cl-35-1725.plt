set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_17-Cl-35_1725.eps'
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
set title '17-Cl-35-1725.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_17-Cl-35_1725.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_17-Cl-35_1725.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 6 u ($1/1E+6):3 ti 'B-6' w l dt 6 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 7 u ($1/1E+6):3 ti 'B-7' w l dt 7 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 8 u ($1/1E+6):3 ti 'B-8' w l dt 8 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 9 u ($1/1E+6):3 ti 'B-9' w l dt 9 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 10 u ($1/1E+6):3 ti 'B-10' w l dt 10 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 11 u ($1/1E+6):3 ti 'B-11' w l dt 11 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 12 u ($1/1E+6):3 ti 'B-12' w l dt 12 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 13 u ($1/1E+6):3 ti 'B-13' w l dt 13 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 14 u ($1/1E+6):3 ti 'B-14' w l dt 14 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 15 u ($1/1E+6):3 ti 'B-15' w l dt 15 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 16 u ($1/1E+6):3 ti 'B-16' w l dt 16 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 17 u ($1/1E+6):3 ti 'B-17' w l dt 17 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 18 u ($1/1E+6):3 ti 'B-18' w l dt 18 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 19 u ($1/1E+6):3 ti 'B-19' w l dt 19 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 20 u ($1/1E+6):3 ti 'C-8' w l dt 20 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 21 u ($1/1E+6):3 ti 'C-9' w l dt 21 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 22 u ($1/1E+6):3 ti 'C-10' w l dt 22 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 23 u ($1/1E+6):3 ti 'C-11' w l dt 23 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 24 u ($1/1E+6):3 ti 'C-12' w l dt 24 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 25 u ($1/1E+6):3 ti 'C-13' w l dt 25 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 26 u ($1/1E+6):3 ti 'C-14' w l dt 26 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 27 u ($1/1E+6):3 ti 'C-15' w l dt 27 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 28 u ($1/1E+6):3 ti 'C-16' w l dt 28 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 29 u ($1/1E+6):3 ti 'C-17' w l dt 29 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 30 u ($1/1E+6):3 ti 'C-18' w l dt 30 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 31 u ($1/1E+6):3 ti 'C-19' w l dt 31 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 32 u ($1/1E+6):3 ti 'C-20' w l dt 32 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 33 u ($1/1E+6):3 ti 'C-21' w l dt 33 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 34 u ($1/1E+6):3 ti 'C-22' w l dt 34 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 35 u ($1/1E+6):3 ti 'N-10' w l dt 35 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 36 u ($1/1E+6):3 ti 'N-11' w l dt 36 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 37 u ($1/1E+6):3 ti 'N-12' w l dt 37 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 38 u ($1/1E+6):3 ti 'N-13' w l dt 38 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 39 u ($1/1E+6):3 ti 'N-14' w l dt 39 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 40 u ($1/1E+6):3 ti 'N-15' w l dt 40 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 41 u ($1/1E+6):3 ti 'N-16' w l dt 41 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 42 u ($1/1E+6):3 ti 'N-17' w l dt 42 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 43 u ($1/1E+6):3 ti 'N-18' w l dt 43 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 44 u ($1/1E+6):3 ti 'N-19' w l dt 44 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 45 u ($1/1E+6):3 ti 'N-20' w l dt 45 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 46 u ($1/1E+6):3 ti 'N-21' w l dt 46 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 47 u ($1/1E+6):3 ti 'N-22' w l dt 47 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 48 u ($1/1E+6):3 ti 'N-23' w l dt 48 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 49 u ($1/1E+6):3 ti 'N-24' w l dt 49 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 50 u ($1/1E+6):3 ti 'O-12' w l dt 50 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 51 u ($1/1E+6):3 ti 'O-13' w l dt 51 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 52 u ($1/1E+6):3 ti 'O-14' w l dt 52 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 53 u ($1/1E+6):3 ti 'O-15' w l dt 53 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 54 u ($1/1E+6):3 ti 'O-16' w l dt 54 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 55 u ($1/1E+6):3 ti 'O-17' w l dt 55 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 56 u ($1/1E+6):3 ti 'O-18' w l dt 56 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 57 u ($1/1E+6):3 ti 'O-19' w l dt 57 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 58 u ($1/1E+6):3 ti 'O-20' w l dt 58 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 59 u ($1/1E+6):3 ti 'O-21' w l dt 59 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 60 u ($1/1E+6):3 ti 'O-22' w l dt 60 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 61 u ($1/1E+6):3 ti 'O-23' w l dt 61 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 62 u ($1/1E+6):3 ti 'O-24' w l dt 62 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 63 u ($1/1E+6):3 ti 'O-25' w l dt 63 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 64 u ($1/1E+6):3 ti 'F-14' w l dt 64 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 65 u ($1/1E+6):3 ti 'F-15' w l dt 65 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 66 u ($1/1E+6):3 ti 'F-16' w l dt 66 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 67 u ($1/1E+6):3 ti 'F-17' w l dt 67 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 68 u ($1/1E+6):3 ti 'F-18' w l dt 68 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 69 u ($1/1E+6):3 ti 'F-19' w l dt 69 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 70 u ($1/1E+6):3 ti 'F-20' w l dt 70 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 71 u ($1/1E+6):3 ti 'F-21' w l dt 71 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 72 u ($1/1E+6):3 ti 'F-22' w l dt 72 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 73 u ($1/1E+6):3 ti 'F-23' w l dt 73 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 74 u ($1/1E+6):3 ti 'F-24' w l dt 74 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 75 u ($1/1E+6):3 ti 'F-25' w l dt 75 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 76 u ($1/1E+6):3 ti 'F-26' w l dt 76 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 77 u ($1/1E+6):3 ti 'F-27' w l dt 77 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 78 u ($1/1E+6):3 ti 'Ne-16' w l dt 78 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 79 u ($1/1E+6):3 ti 'Ne-17' w l dt 79 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 80 u ($1/1E+6):3 ti 'Ne-18' w l dt 80 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 81 u ($1/1E+6):3 ti 'Ne-19' w l dt 81 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 82 u ($1/1E+6):3 ti 'Ne-20' w l dt 82 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 83 u ($1/1E+6):3 ti 'Ne-21' w l dt 83 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 84 u ($1/1E+6):3 ti 'Ne-22' w l dt 84 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 85 u ($1/1E+6):3 ti 'Ne-23' w l dt 85 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 86 u ($1/1E+6):3 ti 'Ne-24' w l dt 86 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 87 u ($1/1E+6):3 ti 'Ne-25' w l dt 87 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 88 u ($1/1E+6):3 ti 'Ne-26' w l dt 88 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 89 u ($1/1E+6):3 ti 'Ne-27' w l dt 89 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 90 u ($1/1E+6):3 ti 'Ne-28' w l dt 90 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 91 u ($1/1E+6):3 ti 'Na-18' w l dt 91 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 92 u ($1/1E+6):3 ti 'Na-19' w l dt 92 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 93 u ($1/1E+6):3 ti 'Na-20' w l dt 93 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 94 u ($1/1E+6):3 ti 'Na-21' w l dt 94 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 95 u ($1/1E+6):3 ti 'Na-22' w l dt 95 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 96 u ($1/1E+6):3 ti 'Na-23' w l dt 96 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 97 u ($1/1E+6):3 ti 'Na-24' w l dt 97 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 98 u ($1/1E+6):3 ti 'Na-25' w l dt 98 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 99 u ($1/1E+6):3 ti 'Na-26' w l dt 99 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 100 u ($1/1E+6):3 ti 'Na-27' w l dt 100 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 101 u ($1/1E+6):3 ti 'Na-28' w l dt 101 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 102 u ($1/1E+6):3 ti 'Na-29' w l dt 102 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 103 u ($1/1E+6):3 ti 'Mg-19' w l dt 103 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 104 u ($1/1E+6):3 ti 'Mg-20' w l dt 104 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 105 u ($1/1E+6):3 ti 'Mg-21' w l dt 105 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 106 u ($1/1E+6):3 ti 'Mg-22' w l dt 106 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 107 u ($1/1E+6):3 ti 'Mg-23' w l dt 107 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 108 u ($1/1E+6):3 ti 'Mg-24' w l dt 108 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 109 u ($1/1E+6):3 ti 'Mg-25' w l dt 109 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 110 u ($1/1E+6):3 ti 'Mg-26' w l dt 110 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 111 u ($1/1E+6):3 ti 'Mg-27' w l dt 111 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 112 u ($1/1E+6):3 ti 'Mg-28' w l dt 112 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 113 u ($1/1E+6):3 ti 'Mg-29' w l dt 113 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 114 u ($1/1E+6):3 ti 'Mg-30' w l dt 114 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 115 u ($1/1E+6):3 ti 'Al-21' w l dt 115 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 116 u ($1/1E+6):3 ti 'Al-22' w l dt 116 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 117 u ($1/1E+6):3 ti 'Al-23' w l dt 117 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 118 u ($1/1E+6):3 ti 'Al-24' w l dt 118 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 119 u ($1/1E+6):3 ti 'Al-24' w l dt 119 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 120 u ($1/1E+6):3 ti 'Al-25' w l dt 120 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 121 u ($1/1E+6):3 ti 'Al-26' w l dt 121 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 122 u ($1/1E+6):3 ti 'Al-26' w l dt 122 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 123 u ($1/1E+6):3 ti 'Al-27' w l dt 123 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 124 u ($1/1E+6):3 ti 'Al-28' w l dt 124 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 125 u ($1/1E+6):3 ti 'Al-29' w l dt 125 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 126 u ($1/1E+6):3 ti 'Al-30' w l dt 126 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 127 u ($1/1E+6):3 ti 'Al-31' w l dt 127 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 128 u ($1/1E+6):3 ti 'Si-22' w l dt 128 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 129 u ($1/1E+6):3 ti 'Si-23' w l dt 129 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 130 u ($1/1E+6):3 ti 'Si-24' w l dt 130 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 131 u ($1/1E+6):3 ti 'Si-25' w l dt 131 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 132 u ($1/1E+6):3 ti 'Si-26' w l dt 132 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 133 u ($1/1E+6):3 ti 'Si-27' w l dt 133 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 134 u ($1/1E+6):3 ti 'Si-28' w l dt 134 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 135 u ($1/1E+6):3 ti 'Si-29' w l dt 135 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 136 u ($1/1E+6):3 ti 'Si-30' w l dt 136 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 137 u ($1/1E+6):3 ti 'Si-31' w l dt 137 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 138 u ($1/1E+6):3 ti 'Si-32' w l dt 138 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 139 u ($1/1E+6):3 ti 'P-24' w l dt 139 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 140 u ($1/1E+6):3 ti 'P-25' w l dt 140 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 141 u ($1/1E+6):3 ti 'P-26' w l dt 141 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 142 u ($1/1E+6):3 ti 'P-27' w l dt 142 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 143 u ($1/1E+6):3 ti 'P-28' w l dt 143 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 144 u ($1/1E+6):3 ti 'P-29' w l dt 144 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 145 u ($1/1E+6):3 ti 'P-30' w l dt 145 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 146 u ($1/1E+6):3 ti 'P-31' w l dt 146 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 147 u ($1/1E+6):3 ti 'P-32' w l dt 147 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 148 u ($1/1E+6):3 ti 'P-33' w l dt 148 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 149 u ($1/1E+6):3 ti 'S-26' w l dt 149 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 150 u ($1/1E+6):3 ti 'S-27' w l dt 150 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 151 u ($1/1E+6):3 ti 'S-28' w l dt 151 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 152 u ($1/1E+6):3 ti 'S-29' w l dt 152 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 153 u ($1/1E+6):3 ti 'S-30' w l dt 153 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 154 u ($1/1E+6):3 ti 'S-31' w l dt 154 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 155 u ($1/1E+6):3 ti 'S-32' w l dt 155 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 156 u ($1/1E+6):3 ti 'S-33' w l dt 156 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 157 u ($1/1E+6):3 ti 'S-34' w l dt 157 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 158 u ($1/1E+6):3 ti 'Cl-28' w l dt 158 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 159 u ($1/1E+6):3 ti 'Cl-29' w l dt 159 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 160 u ($1/1E+6):3 ti 'Cl-30' w l dt 160 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 161 u ($1/1E+6):3 ti 'Cl-31' w l dt 161 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 162 u ($1/1E+6):3 ti 'Cl-32' w l dt 162 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 163 u ($1/1E+6):3 ti 'Cl-33' w l dt 163 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 164 u ($1/1E+6):3 ti 'Cl-34' w l dt 164 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 165 u ($1/1E+6):3 ti 'Cl-34' w l dt 165 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 166 u ($1/1E+6):3 ti 'Cl-35' w l dt 166 axes x1y2,'mf6mt5/g_17-Cl-35_1725.resid' i 167 u ($1/1E+6):3 ti 'g' w l dt 167 axes x1y2,

set output 'eps-log/g_17-Cl-35_1725.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_17-Cl-35_1725.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_17-Cl-35_1725.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_17-Cl-35_1725.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_17-Cl-35_1725.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_17-Cl-35_1725.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_17-Cl-35_1725.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_17-Cl-35_1725.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_17-Cl-35_1725.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'B-6','mf6mt5/g_17-Cl-35_1725.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'B-7','mf6mt5/g_17-Cl-35_1725.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'B-8','mf6mt5/g_17-Cl-35_1725.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'B-9','mf6mt5/g_17-Cl-35_1725.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'B-10','mf6mt5/g_17-Cl-35_1725.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'B-11','mf6mt5/g_17-Cl-35_1725.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'B-12','mf6mt5/g_17-Cl-35_1725.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'B-13','mf6mt5/g_17-Cl-35_1725.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'B-14','mf6mt5/g_17-Cl-35_1725.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'B-15','mf6mt5/g_17-Cl-35_1725.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'B-16','mf6mt5/g_17-Cl-35_1725.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'B-17','mf6mt5/g_17-Cl-35_1725.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'B-18','mf6mt5/g_17-Cl-35_1725.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'B-19','mf6mt5/g_17-Cl-35_1725.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'C-8','mf6mt5/g_17-Cl-35_1725.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'C-9','mf6mt5/g_17-Cl-35_1725.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'C-10','mf6mt5/g_17-Cl-35_1725.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'C-11','mf6mt5/g_17-Cl-35_1725.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'C-12','mf6mt5/g_17-Cl-35_1725.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'C-13','mf6mt5/g_17-Cl-35_1725.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'C-14','mf6mt5/g_17-Cl-35_1725.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'C-15','mf6mt5/g_17-Cl-35_1725.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'C-16','mf6mt5/g_17-Cl-35_1725.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'C-17','mf6mt5/g_17-Cl-35_1725.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'C-18','mf6mt5/g_17-Cl-35_1725.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'C-19','mf6mt5/g_17-Cl-35_1725.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'C-20','mf6mt5/g_17-Cl-35_1725.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'C-21','mf6mt5/g_17-Cl-35_1725.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'C-22','mf6mt5/g_17-Cl-35_1725.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'N-10','mf6mt5/g_17-Cl-35_1725.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'N-11','mf6mt5/g_17-Cl-35_1725.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'N-12','mf6mt5/g_17-Cl-35_1725.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'N-13','mf6mt5/g_17-Cl-35_1725.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'N-14','mf6mt5/g_17-Cl-35_1725.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'N-15','mf6mt5/g_17-Cl-35_1725.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'N-16','mf6mt5/g_17-Cl-35_1725.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'N-17','mf6mt5/g_17-Cl-35_1725.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'N-18','mf6mt5/g_17-Cl-35_1725.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'N-19','mf6mt5/g_17-Cl-35_1725.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'N-20','mf6mt5/g_17-Cl-35_1725.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'N-21','mf6mt5/g_17-Cl-35_1725.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'N-22','mf6mt5/g_17-Cl-35_1725.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'N-23','mf6mt5/g_17-Cl-35_1725.resid' i 49 u ($1/1E+6):4 w l dt 49 ti 'N-24','mf6mt5/g_17-Cl-35_1725.resid' i 50 u ($1/1E+6):4 w l dt 50 ti 'O-12','mf6mt5/g_17-Cl-35_1725.resid' i 51 u ($1/1E+6):4 w l dt 51 ti 'O-13','mf6mt5/g_17-Cl-35_1725.resid' i 52 u ($1/1E+6):4 w l dt 52 ti 'O-14','mf6mt5/g_17-Cl-35_1725.resid' i 53 u ($1/1E+6):4 w l dt 53 ti 'O-15','mf6mt5/g_17-Cl-35_1725.resid' i 54 u ($1/1E+6):4 w l dt 54 ti 'O-16','mf6mt5/g_17-Cl-35_1725.resid' i 55 u ($1/1E+6):4 w l dt 55 ti 'O-17','mf6mt5/g_17-Cl-35_1725.resid' i 56 u ($1/1E+6):4 w l dt 56 ti 'O-18','mf6mt5/g_17-Cl-35_1725.resid' i 57 u ($1/1E+6):4 w l dt 57 ti 'O-19','mf6mt5/g_17-Cl-35_1725.resid' i 58 u ($1/1E+6):4 w l dt 58 ti 'O-20','mf6mt5/g_17-Cl-35_1725.resid' i 59 u ($1/1E+6):4 w l dt 59 ti 'O-21','mf6mt5/g_17-Cl-35_1725.resid' i 60 u ($1/1E+6):4 w l dt 60 ti 'O-22','mf6mt5/g_17-Cl-35_1725.resid' i 61 u ($1/1E+6):4 w l dt 61 ti 'O-23','mf6mt5/g_17-Cl-35_1725.resid' i 62 u ($1/1E+6):4 w l dt 62 ti 'O-24','mf6mt5/g_17-Cl-35_1725.resid' i 63 u ($1/1E+6):4 w l dt 63 ti 'O-25','mf6mt5/g_17-Cl-35_1725.resid' i 64 u ($1/1E+6):4 w l dt 64 ti 'F-14','mf6mt5/g_17-Cl-35_1725.resid' i 65 u ($1/1E+6):4 w l dt 65 ti 'F-15','mf6mt5/g_17-Cl-35_1725.resid' i 66 u ($1/1E+6):4 w l dt 66 ti 'F-16','mf6mt5/g_17-Cl-35_1725.resid' i 67 u ($1/1E+6):4 w l dt 67 ti 'F-17','mf6mt5/g_17-Cl-35_1725.resid' i 68 u ($1/1E+6):4 w l dt 68 ti 'F-18','mf6mt5/g_17-Cl-35_1725.resid' i 69 u ($1/1E+6):4 w l dt 69 ti 'F-19','mf6mt5/g_17-Cl-35_1725.resid' i 70 u ($1/1E+6):4 w l dt 70 ti 'F-20','mf6mt5/g_17-Cl-35_1725.resid' i 71 u ($1/1E+6):4 w l dt 71 ti 'F-21','mf6mt5/g_17-Cl-35_1725.resid' i 72 u ($1/1E+6):4 w l dt 72 ti 'F-22','mf6mt5/g_17-Cl-35_1725.resid' i 73 u ($1/1E+6):4 w l dt 73 ti 'F-23','mf6mt5/g_17-Cl-35_1725.resid' i 74 u ($1/1E+6):4 w l dt 74 ti 'F-24','mf6mt5/g_17-Cl-35_1725.resid' i 75 u ($1/1E+6):4 w l dt 75 ti 'F-25','mf6mt5/g_17-Cl-35_1725.resid' i 76 u ($1/1E+6):4 w l dt 76 ti 'F-26','mf6mt5/g_17-Cl-35_1725.resid' i 77 u ($1/1E+6):4 w l dt 77 ti 'F-27','mf6mt5/g_17-Cl-35_1725.resid' i 78 u ($1/1E+6):4 w l dt 78 ti 'Ne-16','mf6mt5/g_17-Cl-35_1725.resid' i 79 u ($1/1E+6):4 w l dt 79 ti 'Ne-17','mf6mt5/g_17-Cl-35_1725.resid' i 80 u ($1/1E+6):4 w l dt 80 ti 'Ne-18','mf6mt5/g_17-Cl-35_1725.resid' i 81 u ($1/1E+6):4 w l dt 81 ti 'Ne-19','mf6mt5/g_17-Cl-35_1725.resid' i 82 u ($1/1E+6):4 w l dt 82 ti 'Ne-20','mf6mt5/g_17-Cl-35_1725.resid' i 83 u ($1/1E+6):4 w l dt 83 ti 'Ne-21','mf6mt5/g_17-Cl-35_1725.resid' i 84 u ($1/1E+6):4 w l dt 84 ti 'Ne-22','mf6mt5/g_17-Cl-35_1725.resid' i 85 u ($1/1E+6):4 w l dt 85 ti 'Ne-23','mf6mt5/g_17-Cl-35_1725.resid' i 86 u ($1/1E+6):4 w l dt 86 ti 'Ne-24','mf6mt5/g_17-Cl-35_1725.resid' i 87 u ($1/1E+6):4 w l dt 87 ti 'Ne-25','mf6mt5/g_17-Cl-35_1725.resid' i 88 u ($1/1E+6):4 w l dt 88 ti 'Ne-26','mf6mt5/g_17-Cl-35_1725.resid' i 89 u ($1/1E+6):4 w l dt 89 ti 'Ne-27','mf6mt5/g_17-Cl-35_1725.resid' i 90 u ($1/1E+6):4 w l dt 90 ti 'Ne-28','mf6mt5/g_17-Cl-35_1725.resid' i 91 u ($1/1E+6):4 w l dt 91 ti 'Na-18','mf6mt5/g_17-Cl-35_1725.resid' i 92 u ($1/1E+6):4 w l dt 92 ti 'Na-19','mf6mt5/g_17-Cl-35_1725.resid' i 93 u ($1/1E+6):4 w l dt 93 ti 'Na-20','mf6mt5/g_17-Cl-35_1725.resid' i 94 u ($1/1E+6):4 w l dt 94 ti 'Na-21','mf6mt5/g_17-Cl-35_1725.resid' i 95 u ($1/1E+6):4 w l dt 95 ti 'Na-22','mf6mt5/g_17-Cl-35_1725.resid' i 96 u ($1/1E+6):4 w l dt 96 ti 'Na-23','mf6mt5/g_17-Cl-35_1725.resid' i 97 u ($1/1E+6):4 w l dt 97 ti 'Na-24','mf6mt5/g_17-Cl-35_1725.resid' i 98 u ($1/1E+6):4 w l dt 98 ti 'Na-25','mf6mt5/g_17-Cl-35_1725.resid' i 99 u ($1/1E+6):4 w l dt 99 ti 'Na-26','mf6mt5/g_17-Cl-35_1725.resid' i 100 u ($1/1E+6):4 w l dt 100 ti 'Na-27','mf6mt5/g_17-Cl-35_1725.resid' i 101 u ($1/1E+6):4 w l dt 101 ti 'Na-28','mf6mt5/g_17-Cl-35_1725.resid' i 102 u ($1/1E+6):4 w l dt 102 ti 'Na-29','mf6mt5/g_17-Cl-35_1725.resid' i 103 u ($1/1E+6):4 w l dt 103 ti 'Mg-19','mf6mt5/g_17-Cl-35_1725.resid' i 104 u ($1/1E+6):4 w l dt 104 ti 'Mg-20','mf6mt5/g_17-Cl-35_1725.resid' i 105 u ($1/1E+6):4 w l dt 105 ti 'Mg-21','mf6mt5/g_17-Cl-35_1725.resid' i 106 u ($1/1E+6):4 w l dt 106 ti 'Mg-22','mf6mt5/g_17-Cl-35_1725.resid' i 107 u ($1/1E+6):4 w l dt 107 ti 'Mg-23','mf6mt5/g_17-Cl-35_1725.resid' i 108 u ($1/1E+6):4 w l dt 108 ti 'Mg-24','mf6mt5/g_17-Cl-35_1725.resid' i 109 u ($1/1E+6):4 w l dt 109 ti 'Mg-25','mf6mt5/g_17-Cl-35_1725.resid' i 110 u ($1/1E+6):4 w l dt 110 ti 'Mg-26','mf6mt5/g_17-Cl-35_1725.resid' i 111 u ($1/1E+6):4 w l dt 111 ti 'Mg-27','mf6mt5/g_17-Cl-35_1725.resid' i 112 u ($1/1E+6):4 w l dt 112 ti 'Mg-28','mf6mt5/g_17-Cl-35_1725.resid' i 113 u ($1/1E+6):4 w l dt 113 ti 'Mg-29','mf6mt5/g_17-Cl-35_1725.resid' i 114 u ($1/1E+6):4 w l dt 114 ti 'Mg-30','mf6mt5/g_17-Cl-35_1725.resid' i 115 u ($1/1E+6):4 w l dt 115 ti 'Al-21','mf6mt5/g_17-Cl-35_1725.resid' i 116 u ($1/1E+6):4 w l dt 116 ti 'Al-22','mf6mt5/g_17-Cl-35_1725.resid' i 117 u ($1/1E+6):4 w l dt 117 ti 'Al-23','mf6mt5/g_17-Cl-35_1725.resid' i 118 u ($1/1E+6):4 w l dt 118 ti 'Al-24','mf6mt5/g_17-Cl-35_1725.resid' i 119 u ($1/1E+6):4 w l dt 119 ti 'Al-24','mf6mt5/g_17-Cl-35_1725.resid' i 120 u ($1/1E+6):4 w l dt 120 ti 'Al-25','mf6mt5/g_17-Cl-35_1725.resid' i 121 u ($1/1E+6):4 w l dt 121 ti 'Al-26','mf6mt5/g_17-Cl-35_1725.resid' i 122 u ($1/1E+6):4 w l dt 122 ti 'Al-26','mf6mt5/g_17-Cl-35_1725.resid' i 123 u ($1/1E+6):4 w l dt 123 ti 'Al-27','mf6mt5/g_17-Cl-35_1725.resid' i 124 u ($1/1E+6):4 w l dt 124 ti 'Al-28','mf6mt5/g_17-Cl-35_1725.resid' i 125 u ($1/1E+6):4 w l dt 125 ti 'Al-29','mf6mt5/g_17-Cl-35_1725.resid' i 126 u ($1/1E+6):4 w l dt 126 ti 'Al-30','mf6mt5/g_17-Cl-35_1725.resid' i 127 u ($1/1E+6):4 w l dt 127 ti 'Al-31','mf6mt5/g_17-Cl-35_1725.resid' i 128 u ($1/1E+6):4 w l dt 128 ti 'Si-22','mf6mt5/g_17-Cl-35_1725.resid' i 129 u ($1/1E+6):4 w l dt 129 ti 'Si-23','mf6mt5/g_17-Cl-35_1725.resid' i 130 u ($1/1E+6):4 w l dt 130 ti 'Si-24','mf6mt5/g_17-Cl-35_1725.resid' i 131 u ($1/1E+6):4 w l dt 131 ti 'Si-25','mf6mt5/g_17-Cl-35_1725.resid' i 132 u ($1/1E+6):4 w l dt 132 ti 'Si-26','mf6mt5/g_17-Cl-35_1725.resid' i 133 u ($1/1E+6):4 w l dt 133 ti 'Si-27','mf6mt5/g_17-Cl-35_1725.resid' i 134 u ($1/1E+6):4 w l dt 134 ti 'Si-28','mf6mt5/g_17-Cl-35_1725.resid' i 135 u ($1/1E+6):4 w l dt 135 ti 'Si-29','mf6mt5/g_17-Cl-35_1725.resid' i 136 u ($1/1E+6):4 w l dt 136 ti 'Si-30','mf6mt5/g_17-Cl-35_1725.resid' i 137 u ($1/1E+6):4 w l dt 137 ti 'Si-31','mf6mt5/g_17-Cl-35_1725.resid' i 138 u ($1/1E+6):4 w l dt 138 ti 'Si-32','mf6mt5/g_17-Cl-35_1725.resid' i 139 u ($1/1E+6):4 w l dt 139 ti 'P-24','mf6mt5/g_17-Cl-35_1725.resid' i 140 u ($1/1E+6):4 w l dt 140 ti 'P-25','mf6mt5/g_17-Cl-35_1725.resid' i 141 u ($1/1E+6):4 w l dt 141 ti 'P-26','mf6mt5/g_17-Cl-35_1725.resid' i 142 u ($1/1E+6):4 w l dt 142 ti 'P-27','mf6mt5/g_17-Cl-35_1725.resid' i 143 u ($1/1E+6):4 w l dt 143 ti 'P-28','mf6mt5/g_17-Cl-35_1725.resid' i 144 u ($1/1E+6):4 w l dt 144 ti 'P-29','mf6mt5/g_17-Cl-35_1725.resid' i 145 u ($1/1E+6):4 w l dt 145 ti 'P-30','mf6mt5/g_17-Cl-35_1725.resid' i 146 u ($1/1E+6):4 w l dt 146 ti 'P-31','mf6mt5/g_17-Cl-35_1725.resid' i 147 u ($1/1E+6):4 w l dt 147 ti 'P-32','mf6mt5/g_17-Cl-35_1725.resid' i 148 u ($1/1E+6):4 w l dt 148 ti 'P-33','mf6mt5/g_17-Cl-35_1725.resid' i 149 u ($1/1E+6):4 w l dt 149 ti 'S-26','mf6mt5/g_17-Cl-35_1725.resid' i 150 u ($1/1E+6):4 w l dt 150 ti 'S-27','mf6mt5/g_17-Cl-35_1725.resid' i 151 u ($1/1E+6):4 w l dt 151 ti 'S-28','mf6mt5/g_17-Cl-35_1725.resid' i 152 u ($1/1E+6):4 w l dt 152 ti 'S-29','mf6mt5/g_17-Cl-35_1725.resid' i 153 u ($1/1E+6):4 w l dt 153 ti 'S-30','mf6mt5/g_17-Cl-35_1725.resid' i 154 u ($1/1E+6):4 w l dt 154 ti 'S-31','mf6mt5/g_17-Cl-35_1725.resid' i 155 u ($1/1E+6):4 w l dt 155 ti 'S-32','mf6mt5/g_17-Cl-35_1725.resid' i 156 u ($1/1E+6):4 w l dt 156 ti 'S-33','mf6mt5/g_17-Cl-35_1725.resid' i 157 u ($1/1E+6):4 w l dt 157 ti 'S-34','mf6mt5/g_17-Cl-35_1725.resid' i 158 u ($1/1E+6):4 w l dt 158 ti 'Cl-28','mf6mt5/g_17-Cl-35_1725.resid' i 159 u ($1/1E+6):4 w l dt 159 ti 'Cl-29','mf6mt5/g_17-Cl-35_1725.resid' i 160 u ($1/1E+6):4 w l dt 160 ti 'Cl-30','mf6mt5/g_17-Cl-35_1725.resid' i 161 u ($1/1E+6):4 w l dt 161 ti 'Cl-31','mf6mt5/g_17-Cl-35_1725.resid' i 162 u ($1/1E+6):4 w l dt 162 ti 'Cl-32','mf6mt5/g_17-Cl-35_1725.resid' i 163 u ($1/1E+6):4 w l dt 163 ti 'Cl-33','mf6mt5/g_17-Cl-35_1725.resid' i 164 u ($1/1E+6):4 w l dt 164 ti 'Cl-34','mf6mt5/g_17-Cl-35_1725.resid' i 165 u ($1/1E+6):4 w l dt 165 ti 'Cl-34','mf6mt5/g_17-Cl-35_1725.resid' i 166 u ($1/1E+6):4 w l dt 166 ti 'Cl-35','mf6mt5/g_17-Cl-35_1725.resid' i 167 u ($1/1E+6):4 w l dt 167 ti 'g',