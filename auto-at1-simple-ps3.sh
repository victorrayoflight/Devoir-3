#!/bin/bash

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

liste_choix=("Ajouter d'usagers" "Produire un rapport de l'utilisation de sudo" "Produire un rapport des erreurs dans le journal courant" "Mettre à jour la liste des paquetages" "Quitter")

PS3="Votre choix -> "
select choix in "${liste_choix[@]}"
do
  echo "$REPLY = $choix"
  case $REPLY in
  1)
    ajout_usager
  ;;
  2)
    rapport_sudo
  ;;
  3)
    rapport_erreurs
  ;;
  4)
    miseajour_yum
  ;;
  5)
    exit 0
  ;;
  esac
done

