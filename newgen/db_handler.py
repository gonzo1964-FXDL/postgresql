# db_handler.py

import psycopg2
from psycopg2 import sql

class DatabaseManager:
    """
    A context manager for handling PostgreSQL database connections.
    Ensures that connections are properly closed.
    """
    def __init__(self, db_config):
        self.db_config = db_config
        self.connection = None
        self.cursor = None

    def __enter__(self):
        try:
            self.connection = psycopg2.connect(**self.db_config)
            self.cursor = self.connection.cursor()
            print("--> Database connection opened.")
            return self.cursor
        except psycopg2.Error as e:
            print(f"Error: Could not connect to the database. {e}")
            raise

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.connection:
            if exc_type:
                # If an error occurred, rollback changes
                self.connection.rollback()
                print(f"--> Transaction rolled back due to error: {exc_val}")
            else:
                # Otherwise, commit the changes
                self.connection.commit()
                print("--> Transaction committed.")
            self.cursor.close()
            self.connection.close()
            print("--> Database connection closed.")


class BaseRepository:
    """
    Base class for table repositories with common functionality.
    """
    TABLE_NAME = "" # Must be overridden by subclasses
    # Assumption: Each table has a primary key column named 'id' for reliable sorting
    # to find the "last" entries. Adjust if your primary key has a different name.
    PRIMARY_KEY = "id" 
    #PRIMARY_KEY = "datum"

    def __init__(self, db_manager: DatabaseManager):
        self.db_manager = db_manager

    def find_all(self, limit: int = None):
        """
        Fetches records from the table.
        If a limit is provided, fetches the last N records based on the PRIMARY_KEY.
        """
        if not self.TABLE_NAME:
            raise NotImplementedError("Subclasses must define TABLE_NAME")

        if limit:
            print(f"Reading the last {limit} records from table '{self.TABLE_NAME}'...")
            # This subquery fetches the last N rows and then returns them in their correct (ascending) order.
            query = sql.SQL("SELECT * FROM {}").format(sql.Identifier(self.TABLE_NAME))
 #           query = sql.SQL("""
 #               SELECT * FROM (
 #                   SELECT * FROM {table} ORDER BY {pkey} DESC LIMIT %s
 #               ) AS subORDER BY {pkey} ASC
 #           """).format(
 #               table=sql.Identifier(self.TABLE_NAME),
 #               pkey=sql.Identifier(self.PRIMARY_KEY)
 #           )
            

            with self.db_manager as cursor:
                cursor.execute(query, (limit,))
                return cursor.fetchall()
        else:
            print(f"Reading all records from table '{self.TABLE_NAME}'...")
            query = sql.SQL("SELECT * FROM {}").format(sql.Identifier(self.TABLE_NAME))
            with self.db_manager as cursor:
                cursor.execute(query)
                return cursor.fetchall()


class DkvRepository(BaseRepository):
    TABLE_NAME = "dkv"

    def insert(self, data: tuple):
        """Inserts a new record into the dkv table."""
        print(f"Inserting record into '{self.TABLE_NAME}'...")
        query = sql.SQL("""
            INSERT INTO {} (rechnungs_datum, rechnungs_steller, leistungs_datum, rezept_datum, 
                               leistungs_geber, leistung, betrag, dkv_abrechnungs_datum, dkv_abrechnungs_betrag)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
        """).format(sql.Identifier(self.TABLE_NAME))
        
        with self.db_manager as cursor:
            cursor.execute(query, data)
            print(f"{cursor.rowcount} record inserted successfully.")


class ReisekostenRepository(BaseRepository):
    TABLE_NAME = "reisekosten"

    def insert(self, data: tuple):
        """Inserts a new record into the reisekosten table."""
        print(f"Inserting record into '{self.TABLE_NAME}'...")
        query = sql.SQL("INSERT INTO {} (datum, hotel, strecke, km, kosten) VALUES (%s, %s, %s, %s, %s)").format(sql.Identifier(self.TABLE_NAME))
        
        with self.db_manager as cursor:
            cursor.execute(query, data)
            print(f"{cursor.rowcount} record inserted successfully.")


class BlutdruckRepository(BaseRepository):
    TABLE_NAME = "blutdruck"

    def insert(self, data: tuple):
        """Inserts a new record into the blutdruck table."""
        print(f"Inserting record into '{self.TABLE_NAME}'...")
        query = sql.SQL("INSERT INTO {} (datum, zeit, sys, dia, kommentar) VALUES (%s, %s, %s, %s, %s)").format(sql.Identifier(self.TABLE_NAME))
        
        with self.db_manager as cursor:
            cursor.execute(query, data)
            print(f"{cursor.rowcount} record inserted successfully.")


class JournalRepository(BaseRepository):
    TABLE_NAME = "journal"

    def insert(self, data: tuple):
        """Inserts a new record into the journal table."""
        print(f"Inserting record into '{self.TABLE_NAME}'...")
        query = sql.SQL("INSERT INTO {} (datum, erfolg, sport, buch, erkenntnis) VALUES (%s, %s, %s, %s, %s)").format(sql.Identifier(self.TABLE_NAME))
        
        with self.db_manager as cursor:
            cursor.execute(query, data)
            print(f"{cursor.rowcount} record inserted successfully.")