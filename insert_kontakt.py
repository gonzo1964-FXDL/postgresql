#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()

cur.execute("INSERT INTO Kontakt (Name,Strasse,PLZ,ORT,ZUSATZ,TELEFON,GEBDATUM,LOGINNAME,LOGINPSW,URL,Bemerkung) \
    VALUES ('LinkedIn', '', '', '' , '', '', '', 'michael.spruck@googlemail.com' ,'$4Link$1', 'https://www.linkedin.com', 'Soziales Netzwerks' )");


#    #    VALUES ('Kerstin Dietz', 'Bockenheimer Strasse 28', '35516', 'Münzenberg' , '', '0176 60918842', '26.06.1961', '' ,'', '', '' )");
 

conn.commit()
print ("Records created successfully");
conn.close()
