#!/bin/bash

#
#
##Le script etait creé par Victor Medvedev, 2018-07-20 17:26.
##Le script va vous retourner un Bonjour et va informer laquelle est la date courente.
##L'exemple d'utilisation:
#./salut.sh Pierre Mercier
##ou
#. salut.sh Pierre Mercier
#
#

echo
dateCour=`date '+%d %B %Y'`
jourCour=`date '+%A'`
echo Bonjour $*, on est $jourCour le $dateCour.
sleep 1
echo

##La fin de script.

