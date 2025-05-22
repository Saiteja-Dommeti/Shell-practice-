#! /bin/bash

Target01=10 
Target02=20

#OPS= $Target01+$Target02

TIMESTAMP=$(date)

echo "script executed at :$TIMESTAMP"

OPS=$(($Target01+$Target02))

echo "sum of $Target01 and $Target02  is : $OPS"
