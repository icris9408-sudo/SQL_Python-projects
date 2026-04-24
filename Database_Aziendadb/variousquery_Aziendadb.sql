USE Aziendadb;

-- COUNT il numero totale degli ordini
SELECT 
    SUM(Totale) AS 'Somma degli ordini'
FROM Ordini;

-- COUNT il numero totale degli ordini
SELECT 
    COUNT(*) AS 'Totale degli ordini'
FROM Ordini;

-- AVG per la media ordini
SELECT 
    AVG(Totale) AS 'La media degli ordini'
FROM Ordini;

-- MAX il numero massimo degli ordini
SELECT 
    MAX(Totale) AS 'Ordine massimo'
FROM Ordini;

-- MIN per il numero minimo di ordini
SELECT 
    MIN(Totale) AS 'Ordine minimo'
FROM Ordini;

-- COUNT, AVG, MIN, MAX, SUM 
SELECT 
    COUNT(*) AS 'Totale degli ordini',
    AVG(Totale) AS 'La media degli ordini',
    MIN(Totale) AS 'Ordine minimo',
    MAX(Totale) AS 'Ordine massimo',
    SUM(Totale) AS 'Somma degli ordini'
FROM Ordini;