#!/usr/bin/env bash

codeUsager=$1

## On exige d'rentrer le code usager
while [[ -z $codeUsager ]]
do
   read -p "Votre code usager SVP? " codeUsager
done

## On verifie si le code usager deja existe
codeExiste=$(cat "/etc/passwd" | grep "^$codeUsager:")

## Si le code deja existe, on quitte le script
## Option
if [[ -n $codeExiste ]] ; then
  echo "Cet usager deja existe";sleep 1;exit 1
  
  if [] ; then
    echo ""
  fi
fi

## Si le code n'existe pas, on demande les reponses optionelles
read -p "Votre nom complet SVP? " nomComplet

# if ! [[ $nomGroupe =~ ^[a-zA-Z_][0-9a-zA-Z_]*$ ]] ## 
# then
# echo "Vous devez utiliser seulement les simboles \"a-z, A-Z, _\". "

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
