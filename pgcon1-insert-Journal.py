#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()

cur.execute("INSERT INTO journal (ID,Datum,Erfolg,Sport,Buch,Erkenntnis) \
      VALUES (1, '28-12-2022', 'Einkaufen,Roseline Sex', 'n/a', 'n/a', 'n/a' )");

conn.commit()
print ("Records created successfully");
conn.close()

