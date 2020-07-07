#!/usr/bin/sh


for file in `ls -1 ../data/g-iaea-pd-2019/*.dat | sort -k2g -t "_"`; do
    za=`sed -n 2p ${file} | cut -c 1-11`
    awr=`sed -n 2p ${file} | cut -c 12-22`
    lrp=`sed -n 2p ${file} | cut -c 23-33`
    lfi=`sed -n 2p ${file} | cut -c 34-44`
    nlib=`sed -n 2p ${file} | cut -c 45-55`
    nmod=`sed -n 2p ${file} | cut -c 56-66`
    
    elis=`sed -n 3p ${file} | cut -c 1-11`
    sta=`sed -n 3p ${file} | cut -c 12-22`
    lis=`sed -n 3p ${file} | cut -c 23-33`
    liso=`sed -n 3p ${file} | cut -c 34-44`
    #    nlib=`sed -n 3p ${file} | cut -c 45-55`
    nfor=`sed -n 3p ${file} | cut -c 56-66`
    
    awi=`sed -n 4p ${file} | cut -c 1-11`
    emax=`sed -n 4p ${file} | cut -c 12-22`
    lrel=`sed -n 4p ${file} | cut -c 23-33`
#    liso=`sed -n 4p ${file} | cut -c 34-44`
    nsub=`sed -n 4p ${file} | cut -c 45-55`
    nver=`sed -n 4p ${file} | cut -c 56-66`

    temp=`sed -n 5p ${file} | cut -c 1-11`
#    emax=`sed -n 5p ${file} | cut -c 12-22`
    ldrv=`sed -n 5p ${file} | cut -c 23-33`
#    liso=`sed -n 5p ${file} | cut -c 34-44`
    nwd=`sed -n 5p ${file} | cut -c 45-55`
    nxc=`sed -n 5p ${file} | cut -c 56-66`
    
    echo $za $awr $lrp $lfi $nlib $nmod $elis $sta $lis $liso $nfor $awi $emax $lrel $nsub $nver $temp $ldrv $nwd $nxc
    
done

 # CNDC, CENDL3.1/photon-Medium-Heavy Nucleus reactions, MAT=1325      1 0  0
 # 1.302700+4 2.675000+1         -1          0         38          11325 1451
 # 0.000000+0 0.000000+0          0          0          0          61325 1451
 # 1.000000+0 2.000000+8          0          0          0          31325 1451
 # 0.000000+0 0.000000+0          0          0        132         101325 1451
