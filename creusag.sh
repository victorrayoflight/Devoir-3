#!/usr/bin/env bash

##
##
##
## Auteur : Victor Medvedev
## Date : 2018-08-08
## Version: 7 978 567 :) ( j'ai travaillé fort pendant les vacances )
##
## Description de Devoir 3 :
## Écrire le script creusag.sh en respectant toutes les consignes suivantes :
## - Le script accepte un paramètre optionnel : codeusager
## - Si le paramètre existe, afficher : Création du compte codeusager
## - Sinon, demander un code d'usager, continuer à demander tant qu'un code n'est pas fourni
## - Vérifier si le code de l'usager existe dans /etc/passwd
## - S'il existe, afficher un message d'erreur et quitter avec un code d'erreur
## - Sinon, demander le nom complet de l'usager (réponse optionnelle)
## - Demander les noms de groupes supplémentaires (réponse optionnelle)
## - Construire la commande useraddavec les renseignements fournis
## - Ne pas exécuter la commande
##
##
##

codeUsager=$1

## On exige d'rentrer le code usager
while [[ -z $codeUsager ]] ; do
   read -p "Votre code usager SVP ? " codeUsager
done

## On verifie si le code usager deja existe
codeExiste=$(cat "/etc/passwd" | grep "^$codeUsager:")

## Si le code deja existe, on quitte le script
if [[ -n $codeExiste ]] ; then
  echo "Cet usager deja existe." ; sleep 1 ; exit 1
fi

## Si le code n'existe pas, on demande les reponses optionelles
read -p "Votre nom complet SVP ? " nomComplet

read -p "Votre nom de groupe SVP ? " nomGroupe

namePattern="^([a-zA-Z_][0-9a-zA-Z_]*|)$"

while ! [[ $nomGroupe =~ $namePattern ]] ; do
  read -p "Seulement symboles \"A-Z, a-z et _\" sont acceptés. Votre nom de groupe SVP ? " nomGroupe
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

