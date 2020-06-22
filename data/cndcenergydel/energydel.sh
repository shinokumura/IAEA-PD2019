#!/usr/bin/sh

# Run DeCE to delete unnecesary low energy points with cross section 0 b.
# 13-Al- 27
# 24-Cr- 50
# 24-Cr- 53
# 24-Cr- 54
# 40-Zr- 90
# 50-Sn-118
# 74-W -180
# 74-W -182
# 74-W -183
# 74-W -184
# 74-W -186

# g_13-Al-27_1325.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+01325 3  5
# g_40-Zr-90_4025.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+04025 3  5
# g_50-Sn-118_5043.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+05043 3  5
# g_74-W-180_7425.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+07425 3  5
# g_74-W-182_7431.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+07431 3  5
# g_74-W-183_7434.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+07434 3  5
# g_74-W-184_7437.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+07437 3  5
# g_74-W-186_7443.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 1.999000+6 0.000000+07443 3  5

# for i in "g_13-Al-27_1325.dat" "g_40-Zr-90_4025.dat" "g_50-Sn-118_5043.dat" "g_74-W-180_7425.dat" "g_74-W-182_7431.dat" "g_74-W-183_7434.dat" "g_74-W-184_7437.dat" "g_74-W-186_7443.dat"
# do
#     dece -o mod/$i ../g-iaea-pd-2019/$i < delpoint.dat
# done

# g_24-Cr-50_2425.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 9.990000+5 0.000000+02425 3  5
# g_24-Cr-53_2434.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 9.990000+5 0.000000+02434 3  5
# g_24-Cr-54_2437.dat: 1.000000-5 0.000000+0 2.530000-2 0.000000+0 9.990000+5 0.000000+02437 3  5

for i in "g_24-Cr-50_2425.dat" "g_24-Cr-53_2434.dat" "g_24-Cr-54_2437.dat"
do
    dece -o mod/$i ../g-iaea-pd-2019/$i < delpoint.dat
done
