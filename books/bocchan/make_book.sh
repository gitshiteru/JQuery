#!/bin/bash
for i in 4
do 
   sed -e "/img/s/bocchan_$i/bocchan_$((i+1))/" -e"/img src/s/page$i/page$((i+1))/" -e "/Prev/s/bocchan_$((i-1))/bocchan_$i/" -e "/Next/s/bocchan_$((i+1))/bocchan_$((i+2))/" bocchan_$i.html > bocchan_$((i+1)).html 
done
