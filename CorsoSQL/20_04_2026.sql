Use AziendaDb;

Select * from Assegnazioni;
Select * from Progetti;


-- Modifca della Tipo della colonna Nome aumentando la lughezza del tipo a 150
ALTER TABLE Progetti
ALTER COLUMN Nome Nvarchar(150) NULL;

ALTER TABLE Clienti
ALTER COLUMN Email NVARCHAR(50) NOT NULL;


Select * from Clienti;
Select * from Assegnazioni;
Select * from Assegnazioni;


-- MODIFICA IMPORTANTE PER LUNEDI
/*
('', 'Bari')
('Management', '')*/
ALTER TABLE Reparti
ADD CONSTRAINT CK_Reparti_Nome CHECK (Nome <> '');

-- Aggiunge vincolo per evitare dipendenti senza reparto
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Clienti'
AND COLUMN_NAME = 'Email';

-- Rinomina “Reparti” → “Dipartimenti”
EXEC sp_rename 'Reparti', 'Dipartimenti';

--RINOMINARE COLONNE
-- Nome → NomeReparto
-- Dipendenti per reparto
EXEC sp_rename 'Dipartimenti.Nome', 'NomeReparto', 'COLUMN';

-- Sede → SedeReparto
EXEC sp_rename 'Dipartimenti.Sede', 'SedeReparto', 'COLUMN';

/*
    MODIFICARE TIPO DI DATO (ALTER COLUMN)
    Rendere Nome NOT NULL (già lo è, ma esempio valido)
*/
ALTER TABLE Dipendenti
ALTER COLUMN Nome NVARCHAR(80) NOT NULL;


-- Aumentare dimensione Email
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150);

select * from Dipendenti;

-- Rendere stipendio NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN Stipendio DECIMAL(10,2) NOT NULL;

-- Rendere RepartoID NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


-- GGIUNGERE COLONNE NUOVE
-- Aggiungere colonna “Telefono” ai dipendenti
ALTER TABLE Dipendenti
ADD Telefono NVARCHAR(20);

select * From Dipendenti
-- Aggiungere colonna “Attivo”
ALTER TABLE Dipendenti
ADD Attivo BIT DEFAULT 1;

-- ELIMINARE COLONNE
-- Rimuovere Telefono
ALTER TABLE Dipendenti
DROP COLUMN Telefono;

-- MODIFICARE DATI (UPDATE)
-- Aggiornare stipendio di un dipendente
UPDATE Dipendenti
SET Stipendio = 3200
WHERE DipendenteID = 1;
-- Aumentare stipendio del 10%
UPDATE Dipendenti
SET Stipendio = Stipendio * 1.10;

-- Cambiare reparto
UPDATE Dipendenti
SET RepartoID = 2
WHERE DipendenteID = 3;

-- Aggiornare email
UPDATE Dipendenti
SET Email = 'nuova@email.com'
WHERE DipendenteID = 5;

-- UPDATE CON CONDIZIONI (IMPORTANTISSIMO)
-- Aumenta stipendio solo a chi guadagna meno di 2500
UPDATE Dipendenti
SET Stipendio = Stipendio + 200
WHERE Stipendio < 2500;

-- Aggiorna tutti i dipendenti del reparto IT
UPDATE Dipendenti
SET Stipendio = Stipendio + 500
WHERE RepartoID = 1;

-- NULL vs NOT NULL (CONCETTO DA ESAME)
-- Permettere NULL (esempio su Email)
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150) NULL;

-- Imporre NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150) NOT NULL;

--------------------------------Join-------------------------------
SELECT 
    D.Nome, 
    D.Cognome, 
    R.Nome AS Reparto
FROM Dipendenti D
JOIN Reparti R ON D.RepartoID = R.RepartoID;


-- Progetti assegnati ai dipendenti
SELECT D.Nome, D.Cognome, P.Nome AS Progetto, A.Ruolo
FROM Assegnazioni A
JOIN Dipendenti D ON A.DipendenteID = D.DipendenteID
JOIN Progetti P ON A.ProgettoID = P.ProgettoID;

-- Numero dipendenti per reparto
SELECT R.Nome, COUNT(D.DipendenteID) AS TotDipendenti
FROM Reparti R
LEFT JOIN Dipendenti D ON R.RepartoID = D.RepartoID
GROUP BY R.Nome;

--Budget totale progetti
SELECT SUM(Budget) AS BudgetTotale
FROM Progetti;

-- Clienti con ordini
SELECT C.Nome, O.OrdineID, O.Totale
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID;

-- Fatturato totale per cliente
SELECT C.Nome, SUM(O.Totale) AS Fatturato
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID
GROUP BY C.Nome;

-- Prodotti venduti (quantità totale)
SELECT Prodotto, SUM(Quantita) AS TotaleVenduto
FROM DettagliOrdine
GROUP BY Prodotto;
