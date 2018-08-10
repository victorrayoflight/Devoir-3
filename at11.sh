#!/bin/bash

## Auteur : Victor Medvedev
## Date : 2018-08-10

## Partie 1
## Écrire un script pour afficher chacune des lettres du mot "universel"

echo
echo Partie 1
echo

mot="universel"

for (( pos=0; pos<${#mot}; pos=pos+1))
do
  echo ${mot:$pos:1}
done

## Partie 2
## La réponse à une question d'examen est "v:f:v:f:f"
## Afficher les v et f sur des lignes séparées

echo
echo Partie 2
echo

IFS=:
reponse="v:f:v:f:f"
for lettre in $reponse
do
  echo $lettre
done

unset IFS

echo

