#!/bin/bash

## Auteur : Victor Medvedev
## Date : 2018-08-10

## Écrire une fonction qui retourne le plus grand nombre d'une liste
## de nombres donnée en paramètre dans la variable plusGrand
## Écrire un script qui utilise cette fonction

foncPlusGrand()
{
  plusGrand=$1
  for val in $@
  do
    if (( val > plusGrand )); then
      plusGrand=$val
    fi
  done
}

foncPlusGrand $@

echo
echo "Le chiffre plus grand est $plusGrand"
echo

