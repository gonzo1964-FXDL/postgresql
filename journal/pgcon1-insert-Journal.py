#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()

cur.execute("INSERT INTO journal (ID,Datum,Erfolg,Sport,Buch,Erkenntnis) \
      VALUES (3, '29-12-2022', 'Python und Visual Studio Code', '', '', '' )");

conn.commit()
print ("Records created successfully");
conn.close()

