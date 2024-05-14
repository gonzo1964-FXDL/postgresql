import csv
import psycopg2

database_Host="localhost"        
database_User="mspruck"        
database_Port="5432"        
database_Type="PostgreSQL"        
database_Name="ms01" 
database_psw="mspruck"
database_Table="journal"

with open('journal_gesamt.csv', newline='') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=';')

    connection = psycopg2.connect(user=database_User,
                                       password=database_psw,
                                       host=database_Host,
                                       port=database_Port,
                                       database=database_Name)
    cursor = connection.cursor()

    for row in csvreader:

        j_Datum=row[0]
        j_Erfolg=row[1]
        j_Sport=row[2]
        j_Buch=row[3]
        j_Erkenntnis=row[4]
        print("===================================")
        print(j_Datum)
        print(j_Erfolg)
        print(j_Sport)
        print(j_Buch)
        print(j_Erkenntnis)
        print("-------------------------------------")

        try:
                        connection = psycopg2.connect(user=database_User,
                                       password=database_psw,
                                       host=database_Host,
                                       port=database_Port,
                                       database=database_Name)
                        cursor = connection.cursor()

                        print ('Insert in Table : ' , database_Table )
                        insert_query = """ INSERT INTO journal (datum, erfolg, sport, buch, erkenntnis) VALUES (%s,%s,%s,%s,%s)"""
                        record_to_insert = (j_Datum, j_Erfolg, j_Sport, j_Buch, j_Erkenntnis)
                        print(record_to_insert)
                        cursor.execute(insert_query, record_to_insert)

                        connection.commit()
                        count = cursor.rowcount
                        print(count, "Record inserted successfully into >" + database_Table)

        except (Exception, psycopg2.Error) as error:
                        print("Failed to insert record into >" + database_Table)
                        print("Failed to insert record into  table", error)

        finally:
                        # closing database connection.
                        if connection:
                            cursor.close()
                            connection.close()
                            print("DB connection is closed")