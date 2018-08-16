#!/bin/bash
echo $@
echo $*
echo $#
bash interne.sh "$@"
bash interne.sh "$*"

