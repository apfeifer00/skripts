#!/bin/bash

#### Dieses Script dient dazu das eingegebene Verzeichnis einzulesen und anschließend die Dateien zu verschrieben die bestätigt werden. ####

Path=$1 # Pfad für das Tar-File
cPath=$(pwd) # Aktueller Pfad
newPath="./_archive" # Der neue Ordner der erstellt wird.

# Überprüfen ob ein gültiges Verzeichnis existiert und erstellung eines neuen Ordners. 
if [[ ! -z "$Path" ]]; then 
    if [[ ! -e "$Path" ]]; then  
        echo "Path doesn´t exist!"
    else
        mkdir -p $newPath
        echo "Path was created!"
    fi
fi

# Einlesen der Dateien und abfrage welche Dateien gelöscht werden sollen.
echo "Accept or decline the current file with (y /n), followed by [ENTER]:"
for file in ./*
do
echo $file
read -p"Move (j/n)? " response

if [ "$response" == "j" ]; then # Für die Eingabe von "j"
    mv $file "./$newPath/$file"
fi

if [ "$response" == "y" ]; then # Für die Eingabe von 'y'
    mv $file "./$newPath/$file"
fi
done