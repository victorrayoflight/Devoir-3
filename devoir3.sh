#!/usr/bin/env bash

##
##
##
## Auteur : Victor Medvedev
## Date : 2018-08-09
## Version : 1.0
##
## Description du Devoir 3 :
## - Ce programme vous demande un chiffre de 1 à 7.
## - Si la valeur fournie n'est pas de 1 à 7, il affiche un message d'erreur et quitte.
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

if ! (( 1 <= $chiffre <= 7 )) ; then
	echo "Le jour nr. \"$chiffre\" n'existe pas !" ; exit 1 ; else
	for $chiffre in $jours; do
		echo "Le chiffre $chiffre correspond à $jours"
	done
fi
