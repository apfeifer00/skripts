#!/bin/bash
#### Dieses Script dient dazu eine Begrüßung passend zur aktuellen Zeit auszugeben ####
var=$(date +"%H")

case "$var" in
   [9-12]*)
  echo "Guten Morgen!"
  ;;
    [13-19]*)
  echo "Guten Tag!"
  ;;
    20*)
    exit
esac
echo `date +%Y-%m-%d-%H-%M`