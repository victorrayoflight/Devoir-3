#!/usr/bin/bash

##
##
##
## Auteur : Victor Medvedev
## Date : 2018-08-09
## Version : 1.0
##
## Description du Devoir 3 :
## - Ce programme vous demande un chiffre de 1 à 7.
## - Si la valeur fournie n'est pas de 1 à 7,
##   il affiche un message d'erreur et quitte.
## - Il imprime le jour correspondant au chiffre fourni sous la forme :
##   Le chiffre X correspond à jjjjjj
##
##
##

jours="dimanche lundi mardi mercredi jeudi vendredi samedi"
chiffre=$1

while [[ -z $chiffre ]] ; do
    read -p "Entrez un chiffre de 1 à 7 SVP ? > " chiffre
done

if [[ $chiffre < 1 || $chiffre > 7 ]] ; then
    echo "Le jour qui correspond à « $chiffre » n'existe pas." ; exit 1
fi

compter=0
for jour in $jours ; do
    (( compter = compter + 1 ))
    if (( $chiffre == $compter )) ; then
        echo "Le chiffre $chiffre correspond à $jour."
    fi
done

