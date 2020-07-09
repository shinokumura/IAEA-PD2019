#!/bin/sh

INPATH=pattern/*.dat

ls -1 $INPATH |

while read line
do
    echo "\n\n"
    echo $line
    cat $line
done
