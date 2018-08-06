#!/bin/bash

liste=$(seq 1 15)
for nr in $liste
do
echo $nr
done

sleep 1

for (( i=10 ; i>=-2 ; i=i-1 )) # -2<=i, -3<i ; i--, i-=1
do
echo $i
done

sleep 1

for nr1 in {-2..10}
do
echo $nr1 
done

sleep 1

for nom in *
do
echo '+'$nom'+'
done

sleep 1

for nom in $(ls)
do
echo '+'$nom'+'
done

