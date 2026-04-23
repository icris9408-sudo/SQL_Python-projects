
/*
| Tipo             | Quando usarlo                    |
| ---------------- | -------------------------------- |
| INT  = INTERGER  | numeri interi (ID, età) = 100 000 000          |
| DECIMAL(10,2)    | soldi (precisione!)              |
| NVARCHAR, VARCHAR| testo (sempre meglio di VARCHAR) |
| DATE             | solo data                        |
| DATETIME         | data + ora                       |
| BIT              | booleano (0/1)   Vero o Falso    |
*/


/* =========================
CREAZIONE DATABASE
========================= */

CREATE DATABASE ScuolaDb;
-- Crea il contenitore dove salveremo i dati

USE ScuolaDb;
-- Da ora lavoriamo dentro questo database

/* =========================
TABELLA STUDENTI
========================= */

CREATE TABLE Studenti(
-- Crea una tabella (come un foglio Excel) chiamata Studenti

StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
-- Numero automatico per ogni studente (1,2,3...)
-- Serve per identificare ogni studente in modo unico

Nome NVARCHAR(150) NOT NULL,
-- Nome dello studente (obbligatorio)

Cognome NVARCHAR(150) NOT NULL,
-- Cognome dello studente (obbligatorio)

Email NVARCHAR(150) NULL,
-- Email (può essere vuota)

Genere CHAR(1) NOT NULL
-- Un solo carattere: M oppure F


);

/* =========================
INSERIMENTO STUDENTI
========================= */

INSERT INTO Studenti (Nome, Cognome, Genere)
-- Inserisce dati nella tabella

VALUES
('Luca', 'Rossi', 'M'),
-- Primo studente

('Anna', 'Verdi', 'F'),
-- Secondo studente

('Marco', 'Bianchi', 'M'),
-- Terzo studente

('Sara', 'Neri', 'F');
-- Quarto studente

/* =========================
VISUALIZZAZIONE DATI
========================= */

SELECT * FROM Studenti;
-- Mostra tutti i dati

SELECT Nome, Cognome FROM Studenti;
-- Mostra solo nome e cognome
