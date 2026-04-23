-- Creazione del Database
-- CREATE DATABASE ScuolaDb;

-- Elimina il Database esistente
-- DROP Database Demo

-- Uso del Database
USE ScuolaDb;

/*
	| Tipo             | Quando usarlo							 |
| ---------------- | ------------------------------------------- |
| INT = INTEGER    | numeri interi (ID, età)  = 100 000 000      |
| DECIMAL(10,2)    | soldi (precisione!)              |
| NVARCHAR         | testo (sempre meglio di VARCHAR) |
| DATE             | solo data                        |
| DATETIME         | data + ora                       |
| BIT              | booleano (0/1)   Vero o Falso    |
| UNIQUEIDENTIFIER | GUID                             |
*/

-- Creazione della tabella Studenti
CREATE TABLE Studenti(
	StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(150) NOT NULL,
	Cognome NVARCHAR(150) NOT NULL,
	Email NVARCHAR(150) NULL,
	Genere CHAR(7) NOT NULL,
);

-- SELECT = SELEZIONA
-- * = TUTTO

-- VISUALIZZA LA LISTA DEGLI STUDENTI
SELECT StudenteId, Nome, Cognome, Email, Genere FROM STUDENTI;

-- VISUALIZZA TUTTE LE INFORMAZIONI DALLA TABELLA Studenti
SELECT * FROM STUDENTI;

-- VISUALIZZA LE INFORMAZIONI Nome e Genere DALLA TABELLA Studenti
SELECT Nome, Cognome, Genere FROM Studenti;

-- ELIMINARE TABELLA
DROP TABLE STUDENTI;

-- ELIMINARE COLONNA
ALTER TABLE Studenti
DROP COLUMN DataNascita;

-- ELIMINARE TABELLA SE ESISTE
DROP TABLE IF EXISTS STUDENTI;

-- INSERIRE DATI NELLA TABELLA Studenti
SELECT * FROM STUDENTI
INSERT INTO Studenti
	(Nome, Cognome, Genere)
VALUES
	('Mario', 'Rossi', 'M'),
	('Emanuela', 'Ricci', 'F'),
	('Ezio', 'Auditore', 'M'),
	('Luffy', 'Monkey D.', 'M');

-- ELIMINARE SINGOLI DATI
DELETE FROM Studenti
WHERE StudenteId = 8;