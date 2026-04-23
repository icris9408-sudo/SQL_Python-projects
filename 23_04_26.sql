USE Aziendadb;

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini

/*
	SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/

----------------------------------------------------------- COUNT -----------------------------------------------------------

-- Contare le righe delle tabelle (Count)
SELECT 
    COUNT(*) AS 'Totale righe'
FROM Assegnazioni;

-- Visualizzare quante righe di ruolo abbiamo
SELECT
    COUNT(Assegnazioni.Ruolo) /*oppure COUNT(Ruolo)*/ AS 'Totale righe ruoli'
FROM Assegnazioni;

-- Visualizzare il numero di clienti e mail
SELECT
    COUNT(Clienti.ClienteID) AS 'Totale clienti',
    COUNT(CLienti.Email) AS 'Totale email'
FROM Clienti;

----------------------------------------------------------- AVG -----------------------------------------------------------

-- Visualizzare la media degli stipendi con il comando AVG
SELECT
    COUNT(*) AS 'NumRighe',
    AVG(Dipendenti.Salario) AS 'Media stipendi'
FROM Dipendenti;

----------------------------------------------------------- SUM -----------------------------------------------------------

-- Visualizzare la somma di tutti gli stipendi
SELECT
    SUM(Dipendenti.Salario) AS 'Totale Stipendio'
FROM Dipendenti;

SELECT
    COUNT(*) AS 'NumRighe',
    AVG(Dipendenti.Salario) AS 'Media stipendi',
    SUM(Dipendenti.Salario) AS 'Totale Stipendio'
FROM Dipendenti;

----------------------------------------------------------- MIN -----------------------------------------------------------

-- Visualizzare lo stipendio minimo
SELECT
    MIN(Dipendenti.Salario) AS 'Stipendio Minimo'
FROM Dipendenti;

SELECT
    COUNT(*) AS 'NumRighe',
    MIN(Dipendenti.Salario) AS 'Stipendio Minimo',
    AVG(Dipendenti.Salario) AS 'Media stipendi',
    SUM(Dipendenti.Salario) AS 'Totale Stipendio'
FROM Dipendenti;

----------------------------------------------------------- MAX -----------------------------------------------------------

-- Visualizzare lo stipendio minimo
SELECT
    MAX(Dipendenti.Salario) AS 'Stipendio Massimo'
FROM Dipendenti;

SELECT
    COUNT(*) AS 'NumRighe',
    MIN(Dipendenti.Salario) AS 'Stipendio Minimo',
    MAX(Dipendenti.Salario) AS 'Stipendio Massimo',
    AVG(Dipendenti.Salario) AS 'Media stipendi',
    SUM(Dipendenti.Salario) AS 'Totale Stipendio'
FROM Dipendenti;

----------------------------------------------------------- GROUP BY -----------------------------------------------------------
-- Il group by permette di raggruppare colonne/righe
/* Abbiamo ORDER BY, GROUP BY*/

-- Esempio: stipendio per reparto
/*
    Nome completo del dipedente
    Salario
    Nome del reparto
    Sede
    Salario medio del reparto
*/
SELECT 
    d.Nome + ' ' + d.Cognome AS 'Nome Completo',
    d.Salario,
    AVG(d.Salario) AS 'Media Salario',
    r.Nome AS 'Nome Reparto',
    r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r ON r.RepartoID = d.RepartoID
GROUP BY d.Nome, d.Cognome, d.Salario, r.Nome, r.Sede
ORDER BY r.Nome DESC;