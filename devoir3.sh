#!/usr/bin/env bash

codeUsager=$1

## Exigence d'rentrer le code usager
while [[ -z $codeUsager ]]
do
   read -p "Votre code usager SVP? " codeUsager
done

## Verification si le code usager deja existe
codeExiste=$(cat "/etc/passwd" | grep "^$codeUsager:")

## Si le code deja existe, on quitte le script
if [[ -n $codeExiste ]] ; then
  echo "Cet usager deja existe" ; sleep 1 ; exit 1
  
  if [] ; then
    echo ""
  fi
fi

## Si le code n'existe pas, on demande les reponses optionelles...
## ...nom complet
read -p "Votre nom complet SVP? " nomComplet

read -p "Votre nom de groupe SVP? " nomGroupe

namePattern="^([a-zA-Z_][0-9a-zA-Z_]*|)$"

while ! [[ $nomGroupe =~ $namePattern ]] ; do
  read -p "Votre nom de groupe SVP [$namePattern]? " nomGroupe
done


## Formattion d'une commande complete
userAddCommand="useradd"

if [[ -n $nomGroupe ]]
then
   userAddCommand="$userAddCommand -g $nomGroupe"
fi

if [[ -n $nomComplet ]]
then
   userAddCommand="$userAddCommand -c \"$nomComplet\""
fi

userAddCommand="$userAddCommand $codeUsager"

echo $userAddCommand

sleep 1
