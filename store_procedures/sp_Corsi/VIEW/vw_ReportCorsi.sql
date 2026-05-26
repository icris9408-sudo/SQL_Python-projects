ALTER VIEW vw_ReportCorsi
AS
	SELECT
		COUNT(*) AS 'Numero totale dei corsi', -- Restituire il numero totale dei corsi 
		SUM(Crediti) AS 'Somma totale dei crediti', -- Somma totale dei crediti
		AVG(Crediti) AS 'Media totale dei crediti', -- Media totale dei crediti
		MIN(Crediti) AS 'Valore Minimo di crediti', -- I crediti minimi
		MAX(Crediti) AS 'Valore Massimo di crediti' -- I crediti massimi
	FROM Corsi;

-- SELECT * FROM vw_ReportCorsi