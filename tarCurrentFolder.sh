#!/bin/bash

### Dieses Script dient dazu alle Dateien aus dem aktuellen Pfad in eine tar Datei zu komprimieren. ###

Pfad=$1 # Pfad für das Tar-File
var2=$2 # Dient dazu das Script zu beenden wenn mehre Parameter übergeben werden

echo "The script is started!"

# Beendung bei 2 oder mehreren Variablen 
if [[ ! -z "$var2" ]]; then
    echo "Too many arguments!"
    exit 1
fi

# Überprüfen ob ein gültiges Verzeichnis eingegeben wurde.
if [[ ! -z "$Pfad" ]]; then 
    if [[ ! -e "$Pfad" ]]; then 
        echo "Path doesn´t exist!"
        exit 1
    fi
fi
# Setzt das aktuelle Verzeichnis, falls keins übergeben
if [[ -z "$Pfad" ]]; then 
    echo "No PATH is given!"
    Pfad="./"
    echo $Pfad " was set!"
fi

Pfad+="test_`date +"%Y-%m-%d_%H-%M"`.tar" # zusammenfügung von Dateiname mit Pfad zu einem String

tar -cf $Pfad ./* # Beginn mit Komprimierung
echo "Finished!"
exit 0