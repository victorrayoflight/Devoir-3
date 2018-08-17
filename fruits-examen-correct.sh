#!/bin/bash

## ИСПРАВИТЬ!
##
##
## Auteur : Victor Medvedev
## Ver. : Panique
## Description : On compte les fruits
## Données de test : "pomme fraise orange pomme bleuet fraise pomme banane pomme"
##
##
##

fruits=$@

for fruit in ${fruits[@]}
do
	case $fruit in
	p*)
		((pommes++))
	;;
	f*)
		((fraises++))
	;;
	o*)
		((oranges++))
	;;
	b*)
		if [[ $fruit = bl* ]]
		then
			((bleuets++))
		else
			((bananes++))
		fi
	;;
	esac
done

echo "Il y avait $pommes pomme(s), $fraises fraise(s), $oranges orange(s), $bleuets bleuet(s) et $bananes banane(s)"
