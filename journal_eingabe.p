#
# eingabe ueber cli für neue Eintraege
#
import psycopg2, subprocess as sp, sys, csv
#import psycopg2
from sys import argv

print("Eingabe =====================> ", argv[1])
print("Eingabe =====================> ", argv[2])
print("Eingabe =====================> ", argv[3])
print("Eingabe =====================> ", argv[4])
print("Eingabe =====================> ", argv[5])
#
dat = argv[1]
erf = argv[2]
spo = argv[3]
book = argv[4]
erk = argv[5]
#
print (dat)
print (erf)
print (spo)
print (book)
print (erk)

# connect to db and insert
#
conn = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
print ("Opened database successfully")

cur = conn.cursor()
#cur.execute("INSERT INTO Journal1 (datum, erfolg, sport, buch, erkenntnis) VALUES (?, ?, ?, ?, ?)",(dat, erf, spo, book, erk))

insert_with_param = """INSERT INTO Journal1(datum, erfolg, sport, buch,erkenntnis) VALUES (?, ?, ?, ?, ?);"""
data_tuple = (dat, erf, spo, book, erk)
cur.execute(insert_with_param, data_tuple)



conn.commit()
print ("Records created successfully")
conn.close()
