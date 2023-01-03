import psycopg2
from sys import argv
#
#   https://pynative.com/python-postgresql-insert-update-delete-table-data-to-perform-crud-operations/
#
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
#print (dat)
#print (erf)
#print (spo)
#print (book)
#print (erk)
#
try:
    connection = psycopg2.connect(user="mspruck",
                                  password="mspruck",
                                  host="localhost",
                                  port="5432",
                                  database="ms01")
    cursor = connection.cursor()
#

    postgres_insert_query = """ INSERT INTO Journal (datum, erfolg, sport, buch, erkenntnis) VALUES (%s,%s,%s,%s,%s)"""
    record_to_insert = (dat, erf, spo, book, erk)
    cursor.execute(postgres_insert_query, record_to_insert)

    connection.commit()
    count = cursor.rowcount
    print(count, "Record inserted successfully into mobile table")

except (Exception, psycopg2.Error) as error:
    print("Failed to insert record into mobile table", error)

finally:
    # closing database connection.
    if connection:
        cursor.close()
        connection.close()
        print("PostgreSQL connection is closed")