#

python3 main.py insert journal '18.09.2025' 'Erfolg' 'Sport' 'Buch' 'Erkenntnis'

python3 main.py insert journal '24.02.2026' \
'K8s Schulung' \
' ' \
' ' \
' '


"RechnungDAT" , "Steller", "LeistungDAT", "RezeptDAT", "Geber", "Leistung", "Betrag", "DKV-DAT", "DKV-Betrag"

python3 main.py insert dkv '11.02.2026' \
'Dr. Bloch ' \
' ' \
'11.02.2026' \
'Dr. Bloch' \
'Rezeot Vocado' \
'54,85' \
'20.02.2026' \
'54.86' 

bash ms01.sh

delete from journal where key='6603' ;


python3 myclass1.py insert journal '17.09.2025' ' ' ' ' ' ' ' '
python3 myclass1.py insert journal '18.09.2025' ' ' ' ' ' ' ' '


python3 myclass1.py insert flhtkl '30. Sep 2024' ' ' ' ' '46900' 'KM Stand' '01 . Sep 2024' '30. Sep 2024' '16ß6' '6670'

insert into flhtkl (datum, kfz, kz, km_stand, kommentar, anfang_datum, end_datum, monat_km, saison_km) VALUES ('31082024',s' ', ' ', '45294', 'KM Stand', '01. Aug 24', '31. Aug 24', ' ', ' '  )
podman exec -it a40972f893e5 /usr/bin/psql -U postgres -d ms01 -c "insert into ausgaben (datum,ort,betrag) Values ('03062024', 'Nahkauf', '107,30');"

python3 myclass1.py insert reisekosten "23. Juni 2024" " " "Erding - Köln" "609" " "

python3 myclass1.py insert dkv "20.05.2025" "Dr Huber" "20.05.2025" " " "Dr. Huber" "Zahnreinigung" "" " " " "
python3 myclass1.py insert dkv "16.04.2025" "Rathaus Apotheke" " " " " " " " " "" " " " "


/Library/PostgreSQL/16/bin/pg_dump -U postgres  -d ms01 -t journal > journal.sql

python3 myclass1.py insert blutdruck "06. Sept. 2024" "08:12" 153 89 ' '

select * from ausgaben where CAST (datum AS VARCHAR) like '%092024' order by datum;

ändern der column:
alter table journalNew alter column erkenntnis type varchar (100);

update journalNew set erfolg ='Roseline AB, Sandra telefoniert, Film Apocalypse Now' where key =116 ;

update depot set wert ='21.423,23' where key =67;

update depot set wert ='20.951,82' where key =67;


touch -r /Volumes/Untitled/DCIM/100MEDIA/DJI_0042_002.MP4  ExternMovie/03_09_2023/DJI_0042_002.MP4
touch -r /Volumes/Untitled/DCIM/101GOPRO/GH011835.MP4 /Users/michaelspruck/Downloads/06-08-2024-Bormio_Passo_Gavia/GH011835.MP4

cp -r /Users/michaelspruck/PRV /Volumes/SSDGreen/Sicherung/30012025 &
cp -r /Users/michaelspruck/Programmierung /Volumes/SSDGreen/Sicherung/30012025 &
cp -r /Users/michaelspruck/Downloads /Volumes/SSDGreen/Sicherung/30012025 &


18.3. Erding - FFM

S8 Hallbergmoos - München
04:31 - 05:06
04:51 - 05:26

München - FFM

05:41 - 09:04
05:44 - 09:40

05:56 - 10:04
06:25 - 10:13

geplant : 
Indorf - Hallbegmoos        04:00 - 04:25
S8 Hallbergmoos - München   04:31 - 05:06
München - FFM               05:41 - 09:04 ICE 820         

FFM HBF - Wiesenau      U4 bis Willy-Brandt-Platz
                        U8 bis Wiesenau
                        U3 Bad Homburg


geplant : 
Indorf - Hörlkofen          04:40 - 04:50
RB40 Hörlkofen - München    05:03 - 05:34
München - FFM               05:53 - 09:04 ICE 820

