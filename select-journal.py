#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()

cur.execute("SELECT datum, erfolg, sport, buch, erkenntnis  from journal")
rows = cur.fetchall()
for row in rows:
   print ("Datum = ", row[0])
   print ("Erfolg = ", row[1])
   print ("Sport = ", row[2])
   print ("Buch = ", row[3])
   print ("Erkenntnis = ", row [4], "\n")
#
   print (row[0] , ":" , row[1], ":" , row[2] , ":" , row[3] , ":", row[4])
print ("Operation done successfully")
conn.close()
#
#
# https://www.tutorialspoint.com/postgresql/postgresql_python.htm#
#
