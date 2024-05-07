import psycopg2

conn = psycopg2.connect(database="postgres",
                        host="localhost",
                        user="postgres",
                        password="postgres",
                        port="5432")
#
cursor = conn.cursor()
#cursor.execute("SELECT * FROM pg_settings WHERE name = 'port'")
cursor.execute("Select datname from pg_database")
print(cursor.fetchone())
