#!/bin/bash
for i in {1..24} 
do 
   sed -e "/img/s/tsunamito_ningen_$i/tsunamito_ningen_$((i+1))/" -e"/img src/s/page$i/page$((i+1))/" -e "/Next/s/tsunamito_ningen_$((i-1))/tsunamito_ningen_$i/" -e "/Prev/s/tsunamito_ningen_$((i+1))/tsunamito_ningen_$((i+2))/" tsunamito_ningen_$i.html > tsunamito_ningen_$((i+1)).html 
done
