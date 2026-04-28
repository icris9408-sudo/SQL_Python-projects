USE Aziendadb;

--------------------------- 1. SUBQUERY (SOTTOQUERY) ---------------------------
-- Ordini sopra la media
SELECT *
    FROM Ordini
        WHERE Totale > 
            (
            SELECT AVG(Totale) AS 'Media'
            FROM Ordini
            );

-- Ordini sotto la media
SELECT *
    FROM Ordini
        WHERE Totale < 
            (
            SELECT AVG(Totale) As 'Media'
            FROM Ordini
            );

--------------------------- 2. WHERE & HAVING ---------------------------
SELECT 
    Prodotto,
    SUM (Quantita) AS Quantita
        FROM DettagliOrdine
            GROUP BY Prodotto
                HAVING SUM(Quantita) > 1;

-- Clienti senza ordini con operatore (NOT IN)
SELECT *
FROM Clienti
WHERE ClienteID NOT IN
    (SELECT ClienteID FROM Ordini);

-- Ordini sopra la media dei clienti
SELECT * 
    FROM Ordini AS o
        WHERE Totale > 
            (
            SELECT 
                AVG(Totale) AS "Al di sopra della media"
            FROM Ordini AS oo
            WHERE ClienteID = oo.ClienteID
            );

-- media dei clienti
SELECT 
    ClienteID,
    AVG(Totale) AS Media
    FROM Ordini 
    GROUP BY ClienteID;

-- Query che restituisce la media dei Clienti confrontandoli con
SELECT
    o.OrdineID,
    o.ClienteID,
    o.Totale,
    m.MediaCliente
    FROM Ordini AS o
        INNER JOIN 
        (
            SELECT
                ClienteID,
                AVG(oo.Totale) AS MediaCliente
            FROM Ordini AS oo
            GROUP BY oo.ClienteID
        ) AS M ON o.ClienteID = m.ClienteID
        WHERE o.Totale > m.MediaCliente;

--------------------------- 3. DATA IN SQL SERVER ---------------------------
-- Per recuperare gli ordini fatti negli ultimi 30 giorni
SELECT 
    *
FROM Ordini
    WHERE Data_Ordine >= DATEADD(DAY, -30, GETDATE());

-- Ordini per mese
SELECT 
    CONVERT(NVARCHAR, YEAR(Data_Ordine)) AS "Anno",
    CONVERT(NVARCHAR, MONTH(Data_Ordine)) AS "Mese",
    CONVERT(NVARCHAR, DAY(Data_Ordine)) AS "Giorno"
FROM Ordini;

-- Verificare la data di un'ordine basandoti sul ClienteID
SELECT 
    *
FROM Ordini
GETDATE WHERE ClienteID = 6;

--------------------------- 4. TUTTI I JOIN (LEFT JOIN, RIGHT, INNER JOIN, JOIN)---------------------------

--------------------------- 5. CONDIZIONE IF/ELSE (CASE THEN) ---------------------------

--------------------------- 6. STORE PROCEDURE ---------------------------

--------------------------- 7. VIEW = VISTE ---------------------------

--------------------------- 8. BACKUP STANDARD E AUTOMATIZZAZIONE DEL DB ---------------------------

