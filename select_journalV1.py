#!/usr/bin/python
#
#       erweiteruzngen:
#       add update function
#       update Journal set erfolg = 'Python und Postgres' where datum = '27.12.2022' ;
#
#       für den täglichen update eine Datei zur Eingabe erzeugen
#
import psycopg2
from sys import argv

#
# function
def selDatum(daTum):
    print ("--Eintraege fuer Datum =", daTum) 
#
def outPut(row):
    print ("--------------------------------------")
    print ("Datum = ", row[0])
    print ("Erfolg = ", row[1])
    print ("Sport = ", row[2])
    print ("Buch = ", row[3])
    print ("Erkenntnis = ", row [4], "\n")
    print ("---------------------------------------")
    #
#
def inputfile(filename):
    print ("Dateiname = ")
    fobj = open("journal.txt")
    for line in fobj:
        Basket = line.split(":")
        print(Basket[0])
        print(Basket[1])
        print(Basket[2])
# Erweiterung zur abfrage eines bestimmten datums

#print ("---> Abfrage Datum =", argv[1])
if len(argv) > 1:
    print ("---> Abfrage Datum =", argv[1])  
    daTum = argv[1]
    selDatum(daTum)
    filename = "journal.txt"
    inputfile(filename)
#    
#   abfrage ob argv2 einen Wert hat zu, einlesen der Datei
#
    try:
        connection = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
        print ("Opened database successfully")
        cursor = connection.cursor()
        #print (daTum)
        cursor.execute("""SELECT * from journal where datum='%s'""" % (daTum)) 
        #cursor.execute("SELECT * from journal where datum ='01.01.2023'") 
        rows = cursor.fetchall()
        for row in rows:
            outPut(row)
            print (row[0] , ":" , row[1], ":" , row[2] , ":" , row[3] , ":", row[4])
        #print ("Operation done successfully")
    except (Exception, psycopg2.Error) as error:
        print("Failed to read record into mobile table", error)
    #
    finally:
        # closing database connection.
        if connection:
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")    
else:
    print ("Auslesen der ganzen Tabelle")
    try:
        connection = psycopg2.connect(database = "MSTemp01", user = "postgres", password = "postgres", host = "localhost", port = "5432")
        print ("Opened database successfully")
        cursor = connection.cursor()

        cursor.execute("SELECT datum, erfolg, sport, buch, erkenntnis from journal")
        rows = cursor.fetchall()
        outPut(rows)
        for row in rows:
            print (row[0] , ":" , row[1], ":" , row[2] , ":" , row[3] , ":", row[4])
        #print ("Operation done successfully")
    except (Exception, psycopg2.Error) as error:
        print("Failed to read record into mobile table", error)
    #
    finally:
        # closing database connection.
        if connection:
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")
#
# https://www.tutorialspoint.com/postgresql/postgresql_python.htm#