set term postsc portrait color solid font 'Helvetica,10'
set output 'eps/g_55-Cs-133_5525.eps'
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
set title '55-Cs-133-5525.' offset 0,-0.7
set key font 'Helvetica,10'

set key outside below samplen 2 vertical maxrows 50 spacing 0.8

plot 'mf3mt5/g_55-Cs-133_5525.dat' u ($1/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red','mf6mt5/g_55-Cs-133_5525.resid' i 0 u ($1/1E+6):3 ti 'n' w l dt 0 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 1 u ($1/1E+6):3 ti 'p' w l dt 1 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 2 u ($1/1E+6):3 ti 'd' w l dt 2 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 3 u ($1/1E+6):3 ti 'H-3' w l dt 3 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 4 u ($1/1E+6):3 ti 'He-3' w l dt 4 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 5 u ($1/1E+6):3 ti 'alpha' w l dt 5 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 6 u ($1/1E+6):3 ti 'Pd-104' w l dt 6 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 7 u ($1/1E+6):3 ti 'Pd-105' w l dt 7 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 8 u ($1/1E+6):3 ti 'Pd-106' w l dt 8 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 9 u ($1/1E+6):3 ti 'Ag-105' w l dt 9 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 10 u ($1/1E+6):3 ti 'Ag-105' w l dt 10 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 11 u ($1/1E+6):3 ti 'Ag-106' w l dt 11 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 12 u ($1/1E+6):3 ti 'Ag-106' w l dt 12 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 13 u ($1/1E+6):3 ti 'Ag-107' w l dt 13 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 14 u ($1/1E+6):3 ti 'Ag-107' w l dt 14 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 15 u ($1/1E+6):3 ti 'Cd-106' w l dt 15 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 16 u ($1/1E+6):3 ti 'Cd-107' w l dt 16 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 17 u ($1/1E+6):3 ti 'Cd-108' w l dt 17 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 18 u ($1/1E+6):3 ti 'Cd-109' w l dt 18 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 19 u ($1/1E+6):3 ti 'Cd-110' w l dt 19 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 20 u ($1/1E+6):3 ti 'In-107' w l dt 20 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 21 u ($1/1E+6):3 ti 'In-107' w l dt 21 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 22 u ($1/1E+6):3 ti 'In-108' w l dt 22 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 23 u ($1/1E+6):3 ti 'In-108' w l dt 23 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 24 u ($1/1E+6):3 ti 'In-109' w l dt 24 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 25 u ($1/1E+6):3 ti 'In-109' w l dt 25 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 26 u ($1/1E+6):3 ti 'In-110' w l dt 26 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 27 u ($1/1E+6):3 ti 'In-110' w l dt 27 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 28 u ($1/1E+6):3 ti 'In-111' w l dt 28 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 29 u ($1/1E+6):3 ti 'In-111' w l dt 29 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 30 u ($1/1E+6):3 ti 'In-112' w l dt 30 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 31 u ($1/1E+6):3 ti 'In-112' w l dt 31 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 32 u ($1/1E+6):3 ti 'Sn-108' w l dt 32 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 33 u ($1/1E+6):3 ti 'Sn-109' w l dt 33 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 34 u ($1/1E+6):3 ti 'Sn-110' w l dt 34 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 35 u ($1/1E+6):3 ti 'Sn-111' w l dt 35 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 36 u ($1/1E+6):3 ti 'Sn-112' w l dt 36 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 37 u ($1/1E+6):3 ti 'Sn-113' w l dt 37 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 38 u ($1/1E+6):3 ti 'Sn-113' w l dt 38 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 39 u ($1/1E+6):3 ti 'Sn-114' w l dt 39 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 40 u ($1/1E+6):3 ti 'Sb-110' w l dt 40 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 41 u ($1/1E+6):3 ti 'Sb-111' w l dt 41 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 42 u ($1/1E+6):3 ti 'Sb-112' w l dt 42 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 43 u ($1/1E+6):3 ti 'Sb-113' w l dt 43 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 44 u ($1/1E+6):3 ti 'Sb-114' w l dt 44 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 45 u ($1/1E+6):3 ti 'Sb-115' w l dt 45 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 46 u ($1/1E+6):3 ti 'Sb-116' w l dt 46 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 47 u ($1/1E+6):3 ti 'Sb-116' w l dt 47 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 48 u ($1/1E+6):3 ti 'Sb-117' w l dt 48 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 49 u ($1/1E+6):3 ti 'Sb-118' w l dt 49 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 50 u ($1/1E+6):3 ti 'Sb-118' w l dt 50 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 51 u ($1/1E+6):3 ti 'Sb-119' w l dt 51 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 52 u ($1/1E+6):3 ti 'Te-112' w l dt 52 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 53 u ($1/1E+6):3 ti 'Te-113' w l dt 53 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 54 u ($1/1E+6):3 ti 'Te-114' w l dt 54 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 55 u ($1/1E+6):3 ti 'Te-115' w l dt 55 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 56 u ($1/1E+6):3 ti 'Te-115' w l dt 56 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 57 u ($1/1E+6):3 ti 'Te-116' w l dt 57 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 58 u ($1/1E+6):3 ti 'Te-117' w l dt 58 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 59 u ($1/1E+6):3 ti 'Te-118' w l dt 59 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 60 u ($1/1E+6):3 ti 'Te-119' w l dt 60 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 61 u ($1/1E+6):3 ti 'Te-119' w l dt 61 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 62 u ($1/1E+6):3 ti 'Te-120' w l dt 62 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 63 u ($1/1E+6):3 ti 'Te-121' w l dt 63 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 64 u ($1/1E+6):3 ti 'Te-121' w l dt 64 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 65 u ($1/1E+6):3 ti 'Te-122' w l dt 65 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 66 u ($1/1E+6):3 ti 'Te-123' w l dt 66 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 67 u ($1/1E+6):3 ti 'Te-123' w l dt 67 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 68 u ($1/1E+6):3 ti 'Te-124' w l dt 68 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 69 u ($1/1E+6):3 ti 'Te-125' w l dt 69 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 70 u ($1/1E+6):3 ti 'Te-125' w l dt 70 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 71 u ($1/1E+6):3 ti 'Te-126' w l dt 71 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 72 u ($1/1E+6):3 ti 'Te-127' w l dt 72 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 73 u ($1/1E+6):3 ti 'Te-127' w l dt 73 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 74 u ($1/1E+6):3 ti 'I-114' w l dt 74 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 75 u ($1/1E+6):3 ti 'I-114' w l dt 75 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 76 u ($1/1E+6):3 ti 'I-115' w l dt 76 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 77 u ($1/1E+6):3 ti 'I-116' w l dt 77 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 78 u ($1/1E+6):3 ti 'I-117' w l dt 78 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 79 u ($1/1E+6):3 ti 'I-118' w l dt 79 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 80 u ($1/1E+6):3 ti 'I-118' w l dt 80 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 81 u ($1/1E+6):3 ti 'I-119' w l dt 81 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 82 u ($1/1E+6):3 ti 'I-120' w l dt 82 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 83 u ($1/1E+6):3 ti 'I-120' w l dt 83 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 84 u ($1/1E+6):3 ti 'I-121' w l dt 84 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 85 u ($1/1E+6):3 ti 'I-122' w l dt 85 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 86 u ($1/1E+6):3 ti 'I-123' w l dt 86 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 87 u ($1/1E+6):3 ti 'I-124' w l dt 87 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 88 u ($1/1E+6):3 ti 'I-125' w l dt 88 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 89 u ($1/1E+6):3 ti 'I-126' w l dt 89 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 90 u ($1/1E+6):3 ti 'I-127' w l dt 90 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 91 u ($1/1E+6):3 ti 'I-128' w l dt 91 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 92 u ($1/1E+6):3 ti 'I-129' w l dt 92 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 93 u ($1/1E+6):3 ti 'I-130' w l dt 93 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 94 u ($1/1E+6):3 ti 'I-130' w l dt 94 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 95 u ($1/1E+6):3 ti 'I-131' w l dt 95 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 96 u ($1/1E+6):3 ti 'Xe-116' w l dt 96 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 97 u ($1/1E+6):3 ti 'Xe-117' w l dt 97 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 98 u ($1/1E+6):3 ti 'Xe-118' w l dt 98 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 99 u ($1/1E+6):3 ti 'Xe-119' w l dt 99 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 100 u ($1/1E+6):3 ti 'Xe-120' w l dt 100 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 101 u ($1/1E+6):3 ti 'Xe-121' w l dt 101 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 102 u ($1/1E+6):3 ti 'Xe-122' w l dt 102 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 103 u ($1/1E+6):3 ti 'Xe-123' w l dt 103 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 104 u ($1/1E+6):3 ti 'Xe-124' w l dt 104 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 105 u ($1/1E+6):3 ti 'Xe-125' w l dt 105 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 106 u ($1/1E+6):3 ti 'Xe-125' w l dt 106 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 107 u ($1/1E+6):3 ti 'Xe-126' w l dt 107 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 108 u ($1/1E+6):3 ti 'Xe-127' w l dt 108 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 109 u ($1/1E+6):3 ti 'Xe-127' w l dt 109 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 110 u ($1/1E+6):3 ti 'Xe-128' w l dt 110 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 111 u ($1/1E+6):3 ti 'Xe-129' w l dt 111 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 112 u ($1/1E+6):3 ti 'Xe-129' w l dt 112 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 113 u ($1/1E+6):3 ti 'Xe-130' w l dt 113 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 114 u ($1/1E+6):3 ti 'Xe-131' w l dt 114 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 115 u ($1/1E+6):3 ti 'Xe-131' w l dt 115 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 116 u ($1/1E+6):3 ti 'Xe-132' w l dt 116 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 117 u ($1/1E+6):3 ti 'Cs-119' w l dt 117 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 118 u ($1/1E+6):3 ti 'Cs-119' w l dt 118 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 119 u ($1/1E+6):3 ti 'Cs-120' w l dt 119 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 120 u ($1/1E+6):3 ti 'Cs-120' w l dt 120 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 121 u ($1/1E+6):3 ti 'Cs-121' w l dt 121 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 122 u ($1/1E+6):3 ti 'Cs-121' w l dt 122 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 123 u ($1/1E+6):3 ti 'Cs-122' w l dt 123 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 124 u ($1/1E+6):3 ti 'Cs-122' w l dt 124 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 125 u ($1/1E+6):3 ti 'Cs-123' w l dt 125 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 126 u ($1/1E+6):3 ti 'Cs-123' w l dt 126 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 127 u ($1/1E+6):3 ti 'Cs-124' w l dt 127 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 128 u ($1/1E+6):3 ti 'Cs-124' w l dt 128 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 129 u ($1/1E+6):3 ti 'Cs-125' w l dt 129 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 130 u ($1/1E+6):3 ti 'Cs-126' w l dt 130 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 131 u ($1/1E+6):3 ti 'Cs-127' w l dt 131 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 132 u ($1/1E+6):3 ti 'Cs-128' w l dt 132 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 133 u ($1/1E+6):3 ti 'Cs-129' w l dt 133 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 134 u ($1/1E+6):3 ti 'Cs-130' w l dt 134 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 135 u ($1/1E+6):3 ti 'Cs-130' w l dt 135 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 136 u ($1/1E+6):3 ti 'Cs-131' w l dt 136 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 137 u ($1/1E+6):3 ti 'Cs-132' w l dt 137 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 138 u ($1/1E+6):3 ti 'Cs-133' w l dt 138 axes x1y2,'mf6mt5/g_55-Cs-133_5525.resid' i 139 u ($1/1E+6):3 ti 'g' w l dt 139 axes x1y2,

set output 'eps-log/g_55-Cs-133_5525.eps'
set format y '10^{%L}'
set ytics 10
set log y

unset y2label
unset y2tics
set ytics mirror

plot 'mf3mt5/g_55-Cs-133_5525.dat' u ($1/1E+6):2 w l lw 2 lc rgb 'red' noti,'mf6mt5/g_55-Cs-133_5525.resid' i 0 u ($1/1E+6):4 w l dt 0 ti 'n','mf6mt5/g_55-Cs-133_5525.resid' i 1 u ($1/1E+6):4 w l dt 1 ti 'p','mf6mt5/g_55-Cs-133_5525.resid' i 2 u ($1/1E+6):4 w l dt 2 ti 'd','mf6mt5/g_55-Cs-133_5525.resid' i 3 u ($1/1E+6):4 w l dt 3 ti 'H-3','mf6mt5/g_55-Cs-133_5525.resid' i 4 u ($1/1E+6):4 w l dt 4 ti 'He-3','mf6mt5/g_55-Cs-133_5525.resid' i 5 u ($1/1E+6):4 w l dt 5 ti 'alpha','mf6mt5/g_55-Cs-133_5525.resid' i 6 u ($1/1E+6):4 w l dt 6 ti 'Pd-104','mf6mt5/g_55-Cs-133_5525.resid' i 7 u ($1/1E+6):4 w l dt 7 ti 'Pd-105','mf6mt5/g_55-Cs-133_5525.resid' i 8 u ($1/1E+6):4 w l dt 8 ti 'Pd-106','mf6mt5/g_55-Cs-133_5525.resid' i 9 u ($1/1E+6):4 w l dt 9 ti 'Ag-105','mf6mt5/g_55-Cs-133_5525.resid' i 10 u ($1/1E+6):4 w l dt 10 ti 'Ag-105','mf6mt5/g_55-Cs-133_5525.resid' i 11 u ($1/1E+6):4 w l dt 11 ti 'Ag-106','mf6mt5/g_55-Cs-133_5525.resid' i 12 u ($1/1E+6):4 w l dt 12 ti 'Ag-106','mf6mt5/g_55-Cs-133_5525.resid' i 13 u ($1/1E+6):4 w l dt 13 ti 'Ag-107','mf6mt5/g_55-Cs-133_5525.resid' i 14 u ($1/1E+6):4 w l dt 14 ti 'Ag-107','mf6mt5/g_55-Cs-133_5525.resid' i 15 u ($1/1E+6):4 w l dt 15 ti 'Cd-106','mf6mt5/g_55-Cs-133_5525.resid' i 16 u ($1/1E+6):4 w l dt 16 ti 'Cd-107','mf6mt5/g_55-Cs-133_5525.resid' i 17 u ($1/1E+6):4 w l dt 17 ti 'Cd-108','mf6mt5/g_55-Cs-133_5525.resid' i 18 u ($1/1E+6):4 w l dt 18 ti 'Cd-109','mf6mt5/g_55-Cs-133_5525.resid' i 19 u ($1/1E+6):4 w l dt 19 ti 'Cd-110','mf6mt5/g_55-Cs-133_5525.resid' i 20 u ($1/1E+6):4 w l dt 20 ti 'In-107','mf6mt5/g_55-Cs-133_5525.resid' i 21 u ($1/1E+6):4 w l dt 21 ti 'In-107','mf6mt5/g_55-Cs-133_5525.resid' i 22 u ($1/1E+6):4 w l dt 22 ti 'In-108','mf6mt5/g_55-Cs-133_5525.resid' i 23 u ($1/1E+6):4 w l dt 23 ti 'In-108','mf6mt5/g_55-Cs-133_5525.resid' i 24 u ($1/1E+6):4 w l dt 24 ti 'In-109','mf6mt5/g_55-Cs-133_5525.resid' i 25 u ($1/1E+6):4 w l dt 25 ti 'In-109','mf6mt5/g_55-Cs-133_5525.resid' i 26 u ($1/1E+6):4 w l dt 26 ti 'In-110','mf6mt5/g_55-Cs-133_5525.resid' i 27 u ($1/1E+6):4 w l dt 27 ti 'In-110','mf6mt5/g_55-Cs-133_5525.resid' i 28 u ($1/1E+6):4 w l dt 28 ti 'In-111','mf6mt5/g_55-Cs-133_5525.resid' i 29 u ($1/1E+6):4 w l dt 29 ti 'In-111','mf6mt5/g_55-Cs-133_5525.resid' i 30 u ($1/1E+6):4 w l dt 30 ti 'In-112','mf6mt5/g_55-Cs-133_5525.resid' i 31 u ($1/1E+6):4 w l dt 31 ti 'In-112','mf6mt5/g_55-Cs-133_5525.resid' i 32 u ($1/1E+6):4 w l dt 32 ti 'Sn-108','mf6mt5/g_55-Cs-133_5525.resid' i 33 u ($1/1E+6):4 w l dt 33 ti 'Sn-109','mf6mt5/g_55-Cs-133_5525.resid' i 34 u ($1/1E+6):4 w l dt 34 ti 'Sn-110','mf6mt5/g_55-Cs-133_5525.resid' i 35 u ($1/1E+6):4 w l dt 35 ti 'Sn-111','mf6mt5/g_55-Cs-133_5525.resid' i 36 u ($1/1E+6):4 w l dt 36 ti 'Sn-112','mf6mt5/g_55-Cs-133_5525.resid' i 37 u ($1/1E+6):4 w l dt 37 ti 'Sn-113','mf6mt5/g_55-Cs-133_5525.resid' i 38 u ($1/1E+6):4 w l dt 38 ti 'Sn-113','mf6mt5/g_55-Cs-133_5525.resid' i 39 u ($1/1E+6):4 w l dt 39 ti 'Sn-114','mf6mt5/g_55-Cs-133_5525.resid' i 40 u ($1/1E+6):4 w l dt 40 ti 'Sb-110','mf6mt5/g_55-Cs-133_5525.resid' i 41 u ($1/1E+6):4 w l dt 41 ti 'Sb-111','mf6mt5/g_55-Cs-133_5525.resid' i 42 u ($1/1E+6):4 w l dt 42 ti 'Sb-112','mf6mt5/g_55-Cs-133_5525.resid' i 43 u ($1/1E+6):4 w l dt 43 ti 'Sb-113','mf6mt5/g_55-Cs-133_5525.resid' i 44 u ($1/1E+6):4 w l dt 44 ti 'Sb-114','mf6mt5/g_55-Cs-133_5525.resid' i 45 u ($1/1E+6):4 w l dt 45 ti 'Sb-115','mf6mt5/g_55-Cs-133_5525.resid' i 46 u ($1/1E+6):4 w l dt 46 ti 'Sb-116','mf6mt5/g_55-Cs-133_5525.resid' i 47 u ($1/1E+6):4 w l dt 47 ti 'Sb-116','mf6mt5/g_55-Cs-133_5525.resid' i 48 u ($1/1E+6):4 w l dt 48 ti 'Sb-117','mf6mt5/g_55-Cs-133_5525.resid' i 49 u ($1/1E+6):4 w l dt 49 ti 'Sb-118','mf6mt5/g_55-Cs-133_5525.resid' i 50 u ($1/1E+6):4 w l dt 50 ti 'Sb-118','mf6mt5/g_55-Cs-133_5525.resid' i 51 u ($1/1E+6):4 w l dt 51 ti 'Sb-119','mf6mt5/g_55-Cs-133_5525.resid' i 52 u ($1/1E+6):4 w l dt 52 ti 'Te-112','mf6mt5/g_55-Cs-133_5525.resid' i 53 u ($1/1E+6):4 w l dt 53 ti 'Te-113','mf6mt5/g_55-Cs-133_5525.resid' i 54 u ($1/1E+6):4 w l dt 54 ti 'Te-114','mf6mt5/g_55-Cs-133_5525.resid' i 55 u ($1/1E+6):4 w l dt 55 ti 'Te-115','mf6mt5/g_55-Cs-133_5525.resid' i 56 u ($1/1E+6):4 w l dt 56 ti 'Te-115','mf6mt5/g_55-Cs-133_5525.resid' i 57 u ($1/1E+6):4 w l dt 57 ti 'Te-116','mf6mt5/g_55-Cs-133_5525.resid' i 58 u ($1/1E+6):4 w l dt 58 ti 'Te-117','mf6mt5/g_55-Cs-133_5525.resid' i 59 u ($1/1E+6):4 w l dt 59 ti 'Te-118','mf6mt5/g_55-Cs-133_5525.resid' i 60 u ($1/1E+6):4 w l dt 60 ti 'Te-119','mf6mt5/g_55-Cs-133_5525.resid' i 61 u ($1/1E+6):4 w l dt 61 ti 'Te-119','mf6mt5/g_55-Cs-133_5525.resid' i 62 u ($1/1E+6):4 w l dt 62 ti 'Te-120','mf6mt5/g_55-Cs-133_5525.resid' i 63 u ($1/1E+6):4 w l dt 63 ti 'Te-121','mf6mt5/g_55-Cs-133_5525.resid' i 64 u ($1/1E+6):4 w l dt 64 ti 'Te-121','mf6mt5/g_55-Cs-133_5525.resid' i 65 u ($1/1E+6):4 w l dt 65 ti 'Te-122','mf6mt5/g_55-Cs-133_5525.resid' i 66 u ($1/1E+6):4 w l dt 66 ti 'Te-123','mf6mt5/g_55-Cs-133_5525.resid' i 67 u ($1/1E+6):4 w l dt 67 ti 'Te-123','mf6mt5/g_55-Cs-133_5525.resid' i 68 u ($1/1E+6):4 w l dt 68 ti 'Te-124','mf6mt5/g_55-Cs-133_5525.resid' i 69 u ($1/1E+6):4 w l dt 69 ti 'Te-125','mf6mt5/g_55-Cs-133_5525.resid' i 70 u ($1/1E+6):4 w l dt 70 ti 'Te-125','mf6mt5/g_55-Cs-133_5525.resid' i 71 u ($1/1E+6):4 w l dt 71 ti 'Te-126','mf6mt5/g_55-Cs-133_5525.resid' i 72 u ($1/1E+6):4 w l dt 72 ti 'Te-127','mf6mt5/g_55-Cs-133_5525.resid' i 73 u ($1/1E+6):4 w l dt 73 ti 'Te-127','mf6mt5/g_55-Cs-133_5525.resid' i 74 u ($1/1E+6):4 w l dt 74 ti 'I-114','mf6mt5/g_55-Cs-133_5525.resid' i 75 u ($1/1E+6):4 w l dt 75 ti 'I-114','mf6mt5/g_55-Cs-133_5525.resid' i 76 u ($1/1E+6):4 w l dt 76 ti 'I-115','mf6mt5/g_55-Cs-133_5525.resid' i 77 u ($1/1E+6):4 w l dt 77 ti 'I-116','mf6mt5/g_55-Cs-133_5525.resid' i 78 u ($1/1E+6):4 w l dt 78 ti 'I-117','mf6mt5/g_55-Cs-133_5525.resid' i 79 u ($1/1E+6):4 w l dt 79 ti 'I-118','mf6mt5/g_55-Cs-133_5525.resid' i 80 u ($1/1E+6):4 w l dt 80 ti 'I-118','mf6mt5/g_55-Cs-133_5525.resid' i 81 u ($1/1E+6):4 w l dt 81 ti 'I-119','mf6mt5/g_55-Cs-133_5525.resid' i 82 u ($1/1E+6):4 w l dt 82 ti 'I-120','mf6mt5/g_55-Cs-133_5525.resid' i 83 u ($1/1E+6):4 w l dt 83 ti 'I-120','mf6mt5/g_55-Cs-133_5525.resid' i 84 u ($1/1E+6):4 w l dt 84 ti 'I-121','mf6mt5/g_55-Cs-133_5525.resid' i 85 u ($1/1E+6):4 w l dt 85 ti 'I-122','mf6mt5/g_55-Cs-133_5525.resid' i 86 u ($1/1E+6):4 w l dt 86 ti 'I-123','mf6mt5/g_55-Cs-133_5525.resid' i 87 u ($1/1E+6):4 w l dt 87 ti 'I-124','mf6mt5/g_55-Cs-133_5525.resid' i 88 u ($1/1E+6):4 w l dt 88 ti 'I-125','mf6mt5/g_55-Cs-133_5525.resid' i 89 u ($1/1E+6):4 w l dt 89 ti 'I-126','mf6mt5/g_55-Cs-133_5525.resid' i 90 u ($1/1E+6):4 w l dt 90 ti 'I-127','mf6mt5/g_55-Cs-133_5525.resid' i 91 u ($1/1E+6):4 w l dt 91 ti 'I-128','mf6mt5/g_55-Cs-133_5525.resid' i 92 u ($1/1E+6):4 w l dt 92 ti 'I-129','mf6mt5/g_55-Cs-133_5525.resid' i 93 u ($1/1E+6):4 w l dt 93 ti 'I-130','mf6mt5/g_55-Cs-133_5525.resid' i 94 u ($1/1E+6):4 w l dt 94 ti 'I-130','mf6mt5/g_55-Cs-133_5525.resid' i 95 u ($1/1E+6):4 w l dt 95 ti 'I-131','mf6mt5/g_55-Cs-133_5525.resid' i 96 u ($1/1E+6):4 w l dt 96 ti 'Xe-116','mf6mt5/g_55-Cs-133_5525.resid' i 97 u ($1/1E+6):4 w l dt 97 ti 'Xe-117','mf6mt5/g_55-Cs-133_5525.resid' i 98 u ($1/1E+6):4 w l dt 98 ti 'Xe-118','mf6mt5/g_55-Cs-133_5525.resid' i 99 u ($1/1E+6):4 w l dt 99 ti 'Xe-119','mf6mt5/g_55-Cs-133_5525.resid' i 100 u ($1/1E+6):4 w l dt 100 ti 'Xe-120','mf6mt5/g_55-Cs-133_5525.resid' i 101 u ($1/1E+6):4 w l dt 101 ti 'Xe-121','mf6mt5/g_55-Cs-133_5525.resid' i 102 u ($1/1E+6):4 w l dt 102 ti 'Xe-122','mf6mt5/g_55-Cs-133_5525.resid' i 103 u ($1/1E+6):4 w l dt 103 ti 'Xe-123','mf6mt5/g_55-Cs-133_5525.resid' i 104 u ($1/1E+6):4 w l dt 104 ti 'Xe-124','mf6mt5/g_55-Cs-133_5525.resid' i 105 u ($1/1E+6):4 w l dt 105 ti 'Xe-125','mf6mt5/g_55-Cs-133_5525.resid' i 106 u ($1/1E+6):4 w l dt 106 ti 'Xe-125','mf6mt5/g_55-Cs-133_5525.resid' i 107 u ($1/1E+6):4 w l dt 107 ti 'Xe-126','mf6mt5/g_55-Cs-133_5525.resid' i 108 u ($1/1E+6):4 w l dt 108 ti 'Xe-127','mf6mt5/g_55-Cs-133_5525.resid' i 109 u ($1/1E+6):4 w l dt 109 ti 'Xe-127','mf6mt5/g_55-Cs-133_5525.resid' i 110 u ($1/1E+6):4 w l dt 110 ti 'Xe-128','mf6mt5/g_55-Cs-133_5525.resid' i 111 u ($1/1E+6):4 w l dt 111 ti 'Xe-129','mf6mt5/g_55-Cs-133_5525.resid' i 112 u ($1/1E+6):4 w l dt 112 ti 'Xe-129','mf6mt5/g_55-Cs-133_5525.resid' i 113 u ($1/1E+6):4 w l dt 113 ti 'Xe-130','mf6mt5/g_55-Cs-133_5525.resid' i 114 u ($1/1E+6):4 w l dt 114 ti 'Xe-131','mf6mt5/g_55-Cs-133_5525.resid' i 115 u ($1/1E+6):4 w l dt 115 ti 'Xe-131','mf6mt5/g_55-Cs-133_5525.resid' i 116 u ($1/1E+6):4 w l dt 116 ti 'Xe-132','mf6mt5/g_55-Cs-133_5525.resid' i 117 u ($1/1E+6):4 w l dt 117 ti 'Cs-119','mf6mt5/g_55-Cs-133_5525.resid' i 118 u ($1/1E+6):4 w l dt 118 ti 'Cs-119','mf6mt5/g_55-Cs-133_5525.resid' i 119 u ($1/1E+6):4 w l dt 119 ti 'Cs-120','mf6mt5/g_55-Cs-133_5525.resid' i 120 u ($1/1E+6):4 w l dt 120 ti 'Cs-120','mf6mt5/g_55-Cs-133_5525.resid' i 121 u ($1/1E+6):4 w l dt 121 ti 'Cs-121','mf6mt5/g_55-Cs-133_5525.resid' i 122 u ($1/1E+6):4 w l dt 122 ti 'Cs-121','mf6mt5/g_55-Cs-133_5525.resid' i 123 u ($1/1E+6):4 w l dt 123 ti 'Cs-122','mf6mt5/g_55-Cs-133_5525.resid' i 124 u ($1/1E+6):4 w l dt 124 ti 'Cs-122','mf6mt5/g_55-Cs-133_5525.resid' i 125 u ($1/1E+6):4 w l dt 125 ti 'Cs-123','mf6mt5/g_55-Cs-133_5525.resid' i 126 u ($1/1E+6):4 w l dt 126 ti 'Cs-123','mf6mt5/g_55-Cs-133_5525.resid' i 127 u ($1/1E+6):4 w l dt 127 ti 'Cs-124','mf6mt5/g_55-Cs-133_5525.resid' i 128 u ($1/1E+6):4 w l dt 128 ti 'Cs-124','mf6mt5/g_55-Cs-133_5525.resid' i 129 u ($1/1E+6):4 w l dt 129 ti 'Cs-125','mf6mt5/g_55-Cs-133_5525.resid' i 130 u ($1/1E+6):4 w l dt 130 ti 'Cs-126','mf6mt5/g_55-Cs-133_5525.resid' i 131 u ($1/1E+6):4 w l dt 131 ti 'Cs-127','mf6mt5/g_55-Cs-133_5525.resid' i 132 u ($1/1E+6):4 w l dt 132 ti 'Cs-128','mf6mt5/g_55-Cs-133_5525.resid' i 133 u ($1/1E+6):4 w l dt 133 ti 'Cs-129','mf6mt5/g_55-Cs-133_5525.resid' i 134 u ($1/1E+6):4 w l dt 134 ti 'Cs-130','mf6mt5/g_55-Cs-133_5525.resid' i 135 u ($1/1E+6):4 w l dt 135 ti 'Cs-130','mf6mt5/g_55-Cs-133_5525.resid' i 136 u ($1/1E+6):4 w l dt 136 ti 'Cs-131','mf6mt5/g_55-Cs-133_5525.resid' i 137 u ($1/1E+6):4 w l dt 137 ti 'Cs-132','mf6mt5/g_55-Cs-133_5525.resid' i 138 u ($1/1E+6):4 w l dt 138 ti 'Cs-133','mf6mt5/g_55-Cs-133_5525.resid' i 139 u ($1/1E+6):4 w l dt 139 ti 'g',