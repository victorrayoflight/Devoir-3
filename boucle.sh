#!/bin/bash

echo Exemple 1
liste=$(seq 1 15)
for nr in $liste
do
echo $nr
done

echo
echo Exemple 2
for (( i=10 ; i>=-2 ; i=i-1 ))
do
echo $i
done

echo
echo Exemple 3
for nr1 in {-2..10}
do
echo $nr1 
done

echo
echo Exemple 4
for nom in *
do
echo '+'$nom'+'
done

echo
echo Exemple 5
for nom in $(ls)
do
echo '+'$nom'+'
done

