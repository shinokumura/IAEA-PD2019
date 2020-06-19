# update DDATE field to June 2020

basename ../data/g-iaea-pd-2019/*.dat > filelist.dat
while read line
do
    
    #    /Users/okumuras/Dropbox/codes/DeCE/tools/deceheader -d ddate.dat $line
    echo $line
    /Users/okumuras/Dropbox/codes/DeCE/tools/deceheader -d ddate.dat ../data/g-iaea-pd-2019/$line > temp/$line
done < filelist.dat 

#mv temp/$line ../data/g-iaea-pd-2019
#rmdir temp
