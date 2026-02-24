# Daten lesen (ersetzt 'read' und 'rd')
python3 main.py read dkv
python3 main.py read reisekosten

# Daten einfügen
python3 main.py insert dkv "07.01.2024" "Dr. Huber" "11.11.2024" " " "Dr. Huber" "Reinigung" "111,11" " " " "
python3 main.py insert reisekosten "08. Mai 2024" "Hotel" "von nach da" "999" "99.99"
python3 main.py insert blutdruck "09.Mai 2024" "11:33" "138" "78" "Ergometer"
python3 main.py insert journal '07.05.2024' 'Glas Zitronensaft' '' 'Buch' ''

# Du bekommst auch eine eingebaute Hilfe!
python3 main.py --help
python3 main.py insert --help
python3 main.py insert dkv --help


python3 main.py insert dkv "Rech-DAT" "Rech-Steller" "Leistung-DAT " "Rezet-DAT " "Leistung-DAT" "Leistung" "Betrag"  "DKV-Abrechnung " "DKV-Betrag"

python3 main.py insert dkv "29.07.2025" "Dr. Bloch" " " "29.07.2025 " "Dr. Bloch" "Rezept Vocado" "54,86"  "02.08.2025 " " "