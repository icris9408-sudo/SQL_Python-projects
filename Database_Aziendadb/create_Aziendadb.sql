-- DATABASE CREATION
CREATE DATABASE Aziendadb;

-- USE DATABASE
USE Aziendadb;

-- CREAZIONE TABELLE DATABASE --
CREATE TABLE Reparti(
	RepartoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Sede NVARCHAR(100) NULL,
);

CREATE TABLE Progetti(
	ProgettoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Budget DECIMAL(12,2) NULL,
	Data_Inizio DATE,
	Data_Fine DATE,
);

CREATE TABLE Dipendenti(
	DipendenteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Cognome NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) UNIQUE NULL, -- UNIQUE NULL significa che la mail in questo caso è unica
	Stipendio DECIMAL(10,2) NULL,
	Data_Assunzione DATE,
	RepartoID INT,
	FOREIGN KEY (RepartoID) REFERENCES Reparti(RepartoID), -- stringa di codice per richiamare il riferimento RepartoID della tabella Reparti
);

CREATE TABLE Clienti(
	ClienteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Cognome NVARCHAR(100) NULL,
	Email NVARCHAR(100) UNIQUE NULL,
	Telefono NVARCHAR(15) NOT NULL, -- Ho usato questo ALTER TABLE Clienti ADD Telefono NVARCHAR(15);-- Aggiunge Colonna Telefono
	Indirizzo_Abitazione NVARCHAR(100) NULL,
	Codice_Fiscale NVARCHAR(100) NULL,
);

CREATE TABLE Ordini (
	OrdineID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	ClienteID INT,
	Data_Ordine DATE,
	Totale DECIMAL(10,2),
	FOREIGN KEY (ClienteID) REFERENCES Clienti(ClienteID),
);

CREATE TABLE DettagliOrdine(
	DettaglioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	OrdineID INT,
	Prodotto NVARCHAR(50) NOT NULL,
	Quantita INT,
	Prezzo_Unitario DECIMAL(10,2),
	FOREIGN KEY (OrdineID) REFERENCES Ordini(OrdineID),
);

CREATE TABLE Assegnazioni(
	DipendenteID INT,
	ProgettoID INT,
	Ruolo NVARCHAR(50) NULL,
	PRIMARY KEY (DipendenteID, ProgettoID), -- due Chiavi primarie
	FOREIGN KEY (DipendenteID) REFERENCES Dipendenti(DipendenteID),
	FOREIGN KEY (ProgettoID) REFERENCES Progetti(ProgettoID),
);


SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini