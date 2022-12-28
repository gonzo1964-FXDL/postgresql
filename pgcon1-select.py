#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()

cur.execute("SELECT id, name, address, salary  from COMPANY")
rows = cur.fetchall()
for row in rows:
   print ("ID = ", row[0])
   print ("NAME = ", row[1])
   print ("ADDRESS = ", row[2])
   print ("SALARY = ", row[3], "\n")

print ("Operation done successfully")
conn.close()

#
# https://www.tutorialspoint.com/postgresql/postgresql_python.htm#
#
