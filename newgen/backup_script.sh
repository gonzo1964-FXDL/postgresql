#!/bin/bash

# ZIELPFAD festlegen, wo das Backup gespeichert werden soll.
# Ändere diesen Pfad, wenn dein Laufwerk oder Ordner anders heißt.
BACKUP_DIR="/Volumes/SSDRed/Backup/"

# Ordnername für das heutige Backup mit dem aktuellen Datum erstellen.
DATE=$(date +"%Y-%m-%d")
DESTINATION_DIR="$BACKUP_DIR$DATE/"

# Überprüfen, ob das Backup-Laufwerk gemountet ist.
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Fehler: Das Backup-Verzeichnis '$BACKUP_DIR' existiert nicht. Bitte überprüfe, ob das Laufwerk 'SSDRed' angeschlossen ist."
    exit 1
fi

# Neuen, datumsbasierten Backup-Ordner erstellen.
mkdir -p "$DESTINATION_DIR"

# Dateien in den neuen Backup-Ordner kopieren.
# Die Option -r kopiert Verzeichnisse rekursiv.
# Die Option -v zeigt den Kopiervorgang im Terminal an.
echo "Starte das Backup..."
cp -rv /Users/michaelspruck/PRV "$DESTINATION_DIR"
cp -rv /Users/michaelspruck/Programmierung "$DESTINATION_DIR"

echo "Backup abgeschlossen!"
echo "Deine Dateien wurden in '$DESTINATION_DIR' gesichert."
