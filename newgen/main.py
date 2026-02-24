# main.py

import argparse
from db_handler import (
    DatabaseManager, DkvRepository, ReisekostenRepository, 
    BlutdruckRepository, JournalRepository
)

# --- Configuration ---
# Manage your database connection details centrally here.
# For better security, consider loading these from environment variables or a config file.
DB_USER = "mspruck"
DB_NAME = "ms01"
DB_HOST = "localhost"
DB_PORT = "5432"
# Path to the file containing the database password
PSW_PATH = f"/Users/michaelspruck/Programmierung/Git/postgresql/newgen/{DB_NAME}"

def get_db_password(path: str) -> str:
    """Safely reads the password from a specified file."""
    try:
        with open(path, "r") as f:
            return f.read().strip()
    except FileNotFoundError:
        print(f"Error: Password file not found at {path}")
        exit(1) # Exit the script if the password cannot be found

DB_CONFIG = {
    "user": DB_USER,
    "dbname": DB_NAME,
    "host": DB_HOST,
    "port": DB_PORT,
    "password": get_db_password(PSW_PATH)
}

# Mapping table names to their corresponding Repository classes.
# To add a new table, simply create its Repository in db_handler.py and add it here.
REPOSITORIES = {
    "dkv": DkvRepository,
    "reisekosten": ReisekostenRepository,
    "blutdruck": BlutdruckRepository,
    "journal": JournalRepository,
}

# --- Command Handling Logic ---
def handle_read(args):
    """Handles the 'read' command."""
    if args.table not in REPOSITORIES:
        print(f"Error: Unknown table '{args.table}'. Available: {list(REPOSITORIES.keys())}")
        return

    db_manager = DatabaseManager(DB_CONFIG)
    repo = REPOSITORIES[args.table](db_manager)
    
    try:
        # Pass the limit argument (which can be None) to the repository method
        records = repo.find_all(limit=args.limit)
        for record in records:
            print(record)
    except Exception as e:
        print(f"An error occurred during the read operation: {e}")

def handle_insert(args):
    """Handles the 'insert' command by dispatching to the correct repository."""
    if args.table not in REPOSITORIES:
        print(f"Error: Unknown table '{args.table}'. Available: {list(REPOSITORIES.keys())}")
        return

    db_manager = DatabaseManager(DB_CONFIG)
    repo = REPOSITORIES[args.table](db_manager)

    try:
        # The 'args.values' attribute contains the specific arguments for the insert command
        repo.insert(data=tuple(args.values))
    except Exception as e:
        print(f"An error occurred during the insert operation: {e}")

def main():
    """Sets up the command-line argument parser and executes the appropriate command."""
    parser = argparse.ArgumentParser(
        description="A CLI tool to interact with the database.",
        formatter_class=argparse.RawTextHelpFormatter # For better help text formatting
    )
    subparsers = parser.add_subparsers(dest="command", required=True, help="Available commands")

    # --- Parser for the 'read' command ---
    parser_read = subparsers.add_parser("read", help="Read entries from a table.")
    parser_read.add_argument("table", choices=REPOSITORIES.keys(), help="The name of the table to read from.")
    parser_read.add_argument("-l", "--limit", type=int, help="Show only the last N records.")
    parser_read.set_defaults(func=handle_read)

    # --- Parser for the 'insert' command ---
    parser_insert = subparsers.add_parser("insert", help="Insert a new entry into a table.")
    insert_subparsers = parser_insert.add_subparsers(dest="table", required=True, help="The table to insert into")

    # Sub-parser for 'insert dkv'
    dkv_parser = insert_subparsers.add_parser("dkv", help="Insert a new DKV record.")
    dkv_parser.add_argument("values", nargs=9, metavar=("RechnungDAT" , "Steller", "LeistungDAT", "RezeptDAT", "Geber", "Leistung", "Betrag", "DKV-DAT", "DKV-Betrag"), help="9 values for the DKV record")
    dkv_parser.set_defaults(func=handle_insert)

    # Sub-parser for 'insert reisekosten'
    rk_parser = insert_subparsers.add_parser("reisekosten", help="Insert a new Reisekosten record.")
    rk_parser.add_argument("values", nargs=5, metavar=("Datum", "Hotel", "Strecke", "KM", "Kosten"), help="5 values for the Reisekosten record")
    rk_parser.set_defaults(func=handle_insert)

    # Sub-parser for 'insert blutdruck'
    bd_parser = insert_subparsers.add_parser("blutdruck", help="Insert a new Blutdruck record.")
    bd_parser.add_argument("values", nargs=5, metavar=("Datum", "Zeit", "SYS", "DIA", "Kommentar"), help="5 values for the Blutdruck record")
    bd_parser.set_defaults(func=handle_insert)

    # Sub-parser for 'insert journal'
    j_parser = insert_subparsers.add_parser("journal", help="Insert a new Journal record.")
    j_parser.add_argument("values", nargs=5, metavar=("Datum", "Erfolg", "Sport", "Buch", "Erkenntnis"), help="5 values for the Journal record")
    j_parser.set_defaults(func=handle_insert)

    args = parser.parse_args()
    args.func(args) # Call the appropriate handler function (handle_read or handle_insert)

if __name__ == "__main__":
    main()