SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini


--Modifica del Nome della Tabella
EXEC sp_rename 'Clienti', 'ClientiAzienda';



-- AS => Alias (dare un altro nome alla colonna)
-- INNER JOIN(JOIN), LEFT JOIN(da sinistra), RIGHT JOIN(da destra)
/*
	SELECT Colonne da visualizzare
	FROM Tabella1
	INNER JOIN Tabella2 
	ON Condizione
*/

/*
Usare AS per Cambiare i Nomi delle colonne e tabelle 
  Solo dipendenti che hanno un repoarto valido
  Colonne da visulazzare:
		Nome Completo del dipendente(Nome, Cognome),
		Mail, 
		Nome del reparto,
		Sede
*/
SELECT
	d.Nome AS 'Nome del dipentente',
	d.Cognome 'Cognome del dipentente',
	d.Email,
	r.Nome AS 'Nome del Reparto',
	r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoID = r.RepartoID


SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini


-- Clienti(Nome, Telefono), 
-- Ordini(Data, Totale), 
-- Detaglio del Ordine (Prodotto, Quantità, Prezzo unitario)
SELECT 
	cl.Nome AS 'Nome del cliente',
	cl.Telefono AS Contatto,
	o.DataOrdine AS 'Data dell''ordine',
	d.Prodotto AS 'Nome del prodotto',
	d.Quantita AS 'Quantità del prodotto',
	d.PrezzoUnitario AS 'Prezzo Unitario',
	o.Totale AS 'Prezzo totale'
FROM Clienti AS cl
INNER JOIN Ordini AS o 
 -- a condizione che il ClienteID della tabella Ordini è uguale al ClienteID della tabella clienti
 -- Clienti.ClienteID = 1
 -- Ordini.ClienteID = 1
	ON o.ClienteID = cl.ClienteID
INNER JOIN DettagliOrdine as d 
	ON d.OrdineID = o.OrdineID


-- Ruolo, Nome e cognome


-- CONATTENAZIONE (+)
SELECT
	d.Nome + ' ' + d.Cognome 'Nome Completo del dipendente',
	d.Email,
	r.Nome AS 'Nome del Reparto',
	r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoID = r.RepartoID

/*
	SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/