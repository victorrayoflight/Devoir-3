#!/bin/bash

bleu=$(tput setaf 4)
normal=$(tput sgr0)


ajout_usager()
{
  echo $(zenity --file-selection 2> /dev/null) traitement terminé
}

rapport_sudo()
{
  echo "Rapport sudo en cours"
  echo "Rapport sudo terminé"
}

rapport_erreurs()
{
  echo "Rapport erreurs"
}

miseajour_yum()
{
  echo "sudo yum update"
}




liste_choix=("Ajouter des usagers" "Produire un rapport de l'utilisation de sudo" "Produire un rapport des erreurs dans le journal courant" "Mettre à jour la liste des paquetages" "Quitter")

select choix in "${liste_choix[@]}"
do
  echo $choix
  case $choix in
  "${liste_choix[0]}")
    ajout_usager
  ;;
  "${liste_choix[1]}")
    rapport_sudo
  ;;
  "${liste_choix[2]}")
    rapport_erreurs
  ;;
  "${liste_choix[3]}")
    miseajour_yum
  ;;
  "${liste_choix[4]}")
    exit 0
  ;;
  esac
done

