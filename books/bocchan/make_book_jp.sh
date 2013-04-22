#!/bin/bash
for i in {1..396} 
do 
   sed -e "/img/s/bocchan_$i/bocchan_$((i+1))/" -e"/img src/s/page$i/page$((i+1))/" -e "/Next/s/bocchan_$((i-1))/bocchan_$i/" -e "/Prev/s/bocchan_$((i+1))/bocchan_$((i+2))/" bocchan_$i.html > bocchan_$((i+1)).html 
done
