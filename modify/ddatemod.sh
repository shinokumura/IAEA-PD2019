# update DDATE field to June 2020
deceheader=/Users/okumuras/Dropbox/codes/DeCE/tools/deceheader
mkdir temp

# # Run for all files and store them to temp dir
# basename ../data/g-iaea-pd-2019/*.dat > filelist.dat
# while read line
# do
#     echo $line
#     $deceheader -d ddate.dat ../data/g-iaea-pd-2019/$line > temp/$line
# done < filelist.dat 


# Run for the listed files
datadir=../data/g-iaea-pd-2019/
for i in "g_24-Cr-50_2425.dat" "g_24-Cr-53_2434.dat" "g_24-Cr-54_2437.dat" "g_40-Zr-90_4025.dat" "g_50-Sn-118_5043.dat" "g_74-W-180_7425.dat" "g_74-W-182_7431.dat" "g_74-W-183_7434.dat" "g_74-W-184_7437.dat" "g_74-W-186_7443.dat"
do
     $deceheader -d ddate.dat $datadir/$i > temp/$i
done
