#!/bin/bash

if [ $# -ne 2 ];then
echo “Usage: $0 target.pdf outfile”
exit
fi

TARGET=$1
OUTFILE=$2

gs \
-dSAFER \
-dBATCH \
-dNOPAUSE \
-sDEVICE=png16m \
-r150 \
-dTextAlphaBits=4 \
-dGraphicsAlphaBits=4 \
-dMaxStripSize=8192 \
-sOutputFile=${OUTFILE}_%d.png \
${TARGET}
