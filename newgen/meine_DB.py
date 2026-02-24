import psycopg2
import os
import sys
import datetime
from typing import List, Tuple


class Database:
    def __init__(self, user: str, dbname: str, host: str = "localhost", port: str = "5432", password_file: str = None):
        self.user = user
        self.dbname = dbname
        self.host = host
        self.port = port
        self.password = self._read_password(password_file or f"./{user}")

    def _read_password(self, password_file: str) -> str:
        try:
            with open(password_file, "r") as f:
                return f.readline().strip()
        except FileNotFoundError:
            sys.exit(f"Passwortdatei nicht gefunden: {password_file}")

    def connect(self):
        return psycopg2.connect(
            user=self.user,
            password=self.password,
            host=self.host,
            port=self.port,
            database=self.dbname
        )

    def insert(self, table: str, columns: List[str], values: Tuple):
        placeholders = ", ".join(["%s"] * len(values))
        col_names = ", ".join(columns)
        query = f"INSERT INTO {table} ({col_names}) VALUES ({placeholders})"
        try:
            with self.connect() as conn:
                with conn.cursor() as cur:
                    cur.execute(query, values)
                    conn.commit()
                    print(f"✅ Insert in {table} erfolgreich: {values}")
        except Exception as e:
            print(f"❌ Insert in {table} fehlgeschlagen: {e}")

    def read(self, table: str, limit: int = 20):
        query = f"SELECT * FROM {table} LIMIT {limit}"
        try:
            with self.connect() as conn:
                with conn.cursor() as cur:
                    cur.execute(query)
                    rows = cur.fetchall()
                    for row in rows:
                        print(row)
        except Exception as e:
            print(f"❌ Lesen aus {table} fehlgeschlagen: {e}")


# === Tabellenschema-Definition ===
TABLES = {
    "dkv": ["rechnungs_datum", "rechnungs_steller", "leistungs_datum", "rezept_datum",
            "leistungs_geber", "leistung", "betrag", "dkv_abrechnungs_datum", "dkv_abrechnungs_betrag"],

    "reisekosten": ["datum", "hotel", "strecke", "km", "kosten"],

    "blutdruck": ["datum", "zeit", "sys", "dia", "kommentar"],

    "journal": ["datum", "erfolg", "sport", "buch", "erkenntnis"]
}


def main():
    if len(sys.argv) < 3:
        sys.exit("Usage: python3 myclass1.py [insert|read] <table> [werte...]")

    command = sys.argv[1]
    table = sys.argv[2]

    db = Database(user="mspruck", dbname="ms01")

    if command == "insert":
        if table not in TABLES:
            sys.exit(f"Tabelle {table} nicht definiert.")
        columns = TABLES[table]
        values = tuple(sys.argv[3:3 + len(columns)])
        db.insert(table, columns, values)

    elif command == "read":
        db.read(table)

    else:
        sys.exit(f"Unbekanntes Kommando: {command}")


if __name__ == "__main__":
    main()
