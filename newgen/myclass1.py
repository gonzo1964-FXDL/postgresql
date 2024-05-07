import psycopg2
import time
import datetime
import os
import subprocess
#
from sys import argv
#
#
cReaTor = ""
cLeaNer = ""
vieWer = ""
ziPPer = ""
pObject = ""

fileObject ="/ctmpg/.PG/"

today = datetime.date.today()
Today = today.strftime("%y%m%d")
toDay = today.strftime("%y%m")

old_day = datetime.timedelta(days=5)
minus_90 = today - old_day
minus_90 = minus_90.strftime("%y%m%d")

old_day3 = datetime.timedelta(days=3)
minus_3 = today - old_day3
minus_3 = minus_3.strftime("%y%m%d")

old_day1 = datetime.timedelta(days=1)
minus_1 = today - old_day1
minus_1 = minus_1.strftime("%y%m%d")

minus_2 = today - old_day1
ioaLogDelDate = minus_2.strftime("%Y%m%d")

programmUser = os.environ['USER']

database_Table=argv[2]

#
print ('Today    :', Today)
print ('Today    :', toDay)
print ('Today    :', today)
print ('Today    :', old_day)
print ('User     :', programmUser)
#
class DataBase(object): 
    #Die Klasse "DataBase" ist die Basisklasse.

    #def database(self):
    #    print "Initialise Methode - die dann jeweils mit den neuen methoden fuer jede DB ueberschrieben werden kann."
        
        def __init__(self, database_User, database_Name, database_Port, database_Type, database_Host, database_Table):
            self.database_User = database_User
            self.database_Name = database_Name
            self.database_Port = database_Port
            self.database_Type = database_Type
            self.database_Host = database_Host 
            self.database_Table = database_Table
            self.dump_Output="/Users/michaelspruck/Programmierung/Git/postgresql/newgen/"
            self.pswPath = "/Users/michaelspruck/Programmierung/Git/postgresql/newgen"
            fileObject ="/Users/michaelspruck/Programmierung/Git/postgresql/newgen"
            self.ctmpg_SU = "postgres"
#
#
        def read_All_PG(self):

            self.dump_Output_PostgreSQL = ""+ self.dump_Output + "/"+ self.database_Type + "/" + self.database_Host + "/" + Today + ""            
            
            print ('DB_USER : ' , self.database_User)
            print ('DB_NAME : ' , self.database_Name)
            print ('DB_PORT : ' , self.database_Port)
            print ('DB_TYPE : ' , self.database_Type)
            print ('DB_HOST : ' , self.database_Host) 
            print ('DB_Table : ' , self.database_Table)
            print ('DB_OUT : ' , self.dump_Output_PostgreSQL)
 
            print ('get password for ' + self.database_User + " and from file " + fileObject + "/"+ self.database_User +"" )
            self.pswPath = ""+ self.pswPath +"/"+ self.database_Name + ""
            print (self.pswPath) 

            fobj_in = open(self.pswPath, "r")

            for line in fobj_in:
                pObject = line.rstrip()
                os.putenv('PGPASSWORD', line.rstrip())    
            print (pObject)
            #
            # connect to db
            selDate = "psql -U " + self.database_User + " -p " + self.database_Port + " -h " + self.database_Host + " -d " + self.database_Name +" -c \"select * from "+ database_Table +" ; \""
            process = subprocess.Popen(selDate,stdout=subprocess.PIPE,shell=True)
            os.system(selDate)
#
#

database_Host="localhost"        
database_User="mspruck"        
database_Port="5432"        
database_Type="PostgreSQL"        
database_Name="ms01" 
#database_Table=argv[2]
objekt_PG = DataBase(database_User, database_Name, database_Port, database_Type, database_Host, database_Table)
objekt_PG.read_All_PG()
#



