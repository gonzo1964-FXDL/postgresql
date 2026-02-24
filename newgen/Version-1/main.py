# main.py

import argparse
import os
from db_handler import (
    DatabaseManager, DkvRepository, ReisekostenRepository, 
    BlutdruckRepository, JournalRepository
)

# --- Konfiguration ---
# Besser hier zentral verwalten oder aus einer Konfigurationsdatei/Umgebungsvariablen laden
DB_USER = "mspruck"
DB_NAME = "ms01"
DB_HOST = "localhost"
DB_PORT = "5432"
# Passwort sicher laden
PSW_PATH = f"/Users/michaelspruck/Programmierung/Git/postgresql/newgen/{DB_NAME}"

def get_db_password(path: str) -> str:
    """Reads the password from a specified file."""
    try:
        with open(path, "r") as f:
            return f.read().strip()
    except FileNotFoundError:
        print(f"Error: Password file not found at {path}")
        exit(1)

DB_CONFIG = {
    "user": DB_USER,
    "dbname": DB_NAME,
    "host": DB_HOST,
    "port": DB_PORT,
    "password": get_db_password(PSW_PATH)
}

# Mapping von Tabellennamen zu den zugehörigen Repository-Klassen
REPOSITORIES = {
    "dkv": DkvRepository,
    "reisekosten": ReisekostenRepository,
    "blutdruck": BlutdruckRepository,
    "journal": JournalRepository,
    # Füge hier einfach neue Tabellen hinzu, z.B. "depo": DepoRepository
}

# --- Hauptlogik ---
def handle_read(args):
    """Handles the 'read' command."""
    if args.table not in REPOSITORIES:
        print(f"Error: Unknown table '{args.table}'. Available: {list(REPOSITORIES.keys())}")
        return

    db_manager = DatabaseManager(DB_CONFIG)
    repo = REPOSITORIES[args.table](db_manager)
    
    try:
        records = repo.find_all()
        for record in records:
            print(record)
    except Exception as e:
        print(f"An error occurred during read operation: {e}")

def handle_insert(args):
    """Handles the 'insert' command by dispatching to the correct repository."""
    if args.table not in REPOSITORIES:
        print(f"Error: Unknown table '{args.table}'. Available: {list(REPOSITORIES.keys())}")
        return

    db_manager = DatabaseManager(DB_CONFIG)
    repo = REPOSITORIES[args.table](db_manager)

    try:
        # Die `args.values` enthalten nur die Argumente für den spezifischen Insert-Befehl
        repo.insert(data=tuple(args.values))
    except Exception as e:
        print(f"An error occurred during insert operation: {e}")

def main():
    parser = argparse.ArgumentParser(description="A CLI tool to interact with the database.")
    subparsers = parser.add_subparsers(dest="command", required=True, help="Available commands")

    # --- Parser für den 'read' Befehl ---
    parser_read = subparsers.add_parser("read", help="Read all entries from a table.")
    parser_read.add_argument("table", choices=REPOSITORIES.keys(), help="The name of the table to read from.")
    parser_read.set_defaults(func=handle_read)

    # --- Parser für den 'insert' Befehl ---
    parser_insert = subparsers.add_parser("insert", help="Insert a new entry into a table.")
    insert_subparsers = parser_insert.add_subparsers(dest="table", required=True, help="The table to insert into")

    # Sub-parser für 'insert dkv'
    dkv_parser = insert_subparsers.add_parser("dkv", help="Insert DKV record")
    dkv_parser.add_argument("values", nargs=9, metavar=("RechnungDAT" , "Steller", "LeistungDAT", "RezeptDAT", "Geber", "Leistung", "Betrag", "DKV-DAT", "DKV-Betrag"))
    dkv_parser.set_defaults(func=handle_insert)

    # Sub-parser für 'insert reisekosten'
    rk_parser = insert_subparsers.add_parser("reisekosten", help="Insert Reisekosten record")
    rk_parser.add_argument("values", nargs=5, metavar=("Datum", "Hotel", "Strecke", "KM", "Kosten"))
    rk_parser.set_defaults(func=handle_insert)

    # Sub-parser für 'insert blutdruck'
    bd_parser = insert_subparsers.add_parser("blutdruck", help="Insert Blutdruck record")
    bd_parser.add_argument("values", nargs=5, metavar=("Datum", "Zeit", "SYS", "DIA", "Kommentar"))
    bd_parser.set_defaults(func=handle_insert)

    # Sub-parser für 'insert journal'
    j_parser = insert_subparsers.add_parser("journal", help="Insert Journal record")
    j_parser.add_argument("values", nargs=5, metavar=("Datum", "Erfolg", "Sport", "Buch", "Erkenntnis"))
    j_parser.set_defaults(func=handle_insert)

    args = parser.parse_args()
    args.func(args) # Ruft die zugewiesene Funktion auf (handle_read or handle_insert)

if __name__ == "__main__":
    main()