CREATE TABLE dkv (Rechnungs_Datum VARCHAR(30) NOT NULL,
    Rechnungs_Steller VARCHAR(40) NOT NULL,
    Leistungs_Datum VARCHAR(30) NOT NULL,
    Rezept_Datum VARCHAR(30) NOT NULL,
    Leistungs_Geber VARCHAR(30) NOT NULL,
    Leistung VARCHAR(80) NOT NULL,
    Betrag VARCHAR(8) NOT NULL,
    DKV_Abrechnungs_Datum VARCHAR(20),
    DKV_Abrechnungs_Betrag VARCHAR(8) NOT NULL
); 
