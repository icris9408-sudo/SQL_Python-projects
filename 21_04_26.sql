USE Aziendadb;

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini

-- Insert DettagliOrdine
INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantità, Prezzo_Unitario) VALUES
    (17,'Laptop',1,1500),
    (18,'Server',1,2000),
    (19,'Mouse',5,100),
    (20,'Tastiera',1,100),
    (21,'Monitor',2,600),
    (22,'Stampante',1,800),
    (23,'PC Gaming',1,3000);

SELECT * FROM DettagliOrdine;

-- ALTER TABLE DettagliOrdine ADD Quantita NVARCHAR(150) NOT NULL;

EXEC sp_rename 'DettagliOrdine.Quantità','Quantita'; -- Modifica del nome della colonna

EXEC sp_rename 'Dipendenti.Stipendio','Salario'; -- EXEC sp_rename 'Dipendenti.Salario','Stipendio', 'COLUMN';

UPDATE Clienti
SET Cognome = 'Greco'
WHERE ClienteID = 1;

UPDATE Clienti
SET Indirizzo_Abitazione = 'Via Roma, 167'
WHERE ClienteID = 5;


SELECT * FROM Clienti WHERE ClienteID = 5; -- Aggiungere WHERE nella SELECT filtra per il valore di ClienteID

-- UPDATE CON CONDIZIONI (IMPORTANTISSIMO)
-- Aumenta stipendio solo a chi guadagna meno di 2400
UPDATE Dipendenti
SET Salario = Salario + 200
WHERE Salario < 2400;

-- Aggiungo Colonna Telefono
ALTER TABLE Dipendenti ADD Telefono NVARCHAR(15) NULL;

--Aggiungo numeri di telefono
UPDATE Dipendenti
SET Telefono = '+393442134526'
WHERE DipendenteID = 5;
UPDATE Dipendenti
SET Telefono = '+393442198726'
WHERE DipendenteID = 1;
UPDATE Dipendenti
SET Telefono = '+393333198726'
WHERE DipendenteID = 2;
UPDATE Dipendenti
SET Telefono = '+393564143566'
WHERE DipendenteID = 3;
UPDATE Dipendenti
SET Telefono = '+393442143566'
WHERE DipendenteID = 4;

/* ALTER TABLE Dipedenti
DROP COLUMN Telefono; */

UPDATE Dipendenti
SET Salario = '3200'
WHERE DipendenteID = 1;

UPDATE Dipendenti
SET Salario = Salario * 1.10 -- Ho aumentato il Salario dei dipendenti di un 10 %

UPDATE Dipendenti
SET RepartoID = 30
WHERE DipendenteID = 2; -- Ho cambiato il reparto del DipedenteID 2 

SELECT * FROM Dipendenti; -- Reparti

/*
UPDATE NomeTabella
SET NomeColonna = NUovoValore
WHERE Valore_Nome
*/

----------- TIPOLOGIE DI UNIONE TABELLE (JOIN) -----------

-- INNER JOIN(o JOIN)
-- LEFT JOIN -> Prende tutti i dati della tabella sinistra e li unisce a quella destra
-- RIGHT JOIN -> Lo stesso di LEFT JOIN, ma anzichè sinistra a destra

/* SELECT Colonne da visualizzare
FROM Tabella1
INNER JOIN Tabella2
ON Condizione
*/

-- Dobbiamo restituire solo dipedenti che hanno un reparto valido
/* Colonne da visualizzare 
        Nome Completo del Dipendente (Nome, Cognome), 
        Email, 
        Nome, 
        Sede;
*/

SELECT 
    d.Nome AS 'Nome del Dipendente',
    d.Cognome AS 'Cognome del Dipendente',
    d.Email,
    r.Nome AS 'Nome del Reparto',
    r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoID = r.RepartoID;

/* Clienti (Nome, Cognome, Telefono), 
    Ordini (Data_Ordine, Totale), 
    Dettaglio dell' Ordine (Prodotto, Quantita, Prezzo_Unitario)
*/

SELECT
    cl.Nome AS 'Nome',
    cl.Cognome AS 'Cognome',
    cl.Telefono AS 'Contatto',
    ord.Data_Ordine AS 'Data Ordine',
    d.Prodotto,
    d.Quantita AS 'Quantità',
    d.Prezzo_Unitario AS 'Prezzo Unitario',
    ord.Totale
FROM Clienti AS cl
INNER JOIN Ordini AS ord ON ord.ClienteID = cl.ClienteID
INNER JOIN DettagliOrdine AS d ON d.OrdineID = ord.OrdineID;

-- CONCATENAZIONE (+) --
SELECT 
    d.Nome + ' ' + d.Cognome 'Nome Completo del Dipedente',
    d.Email,
    r.Nome AS 'Nome del Reparto',
    r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoID = r.RepartoID;

/*
	SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/