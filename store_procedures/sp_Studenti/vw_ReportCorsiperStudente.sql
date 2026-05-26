ALTER VIEW vw_ReportCorsiperStudente
AS
	SELECT
		ISNULL(s.Nome + ' ' + s.Cognome, 'N/D') AS 'Nome completo dello studente',
		COUNT(c.CorsoId) AS 'Numero totale dei corsi', -- Restituire il numero totale dei corsi 
		SUM(c.Crediti) AS 'Somma totale dei crediti', -- Somma totale dei crediti
		AVG(c.Crediti) AS 'Media totale dei crediti', -- Media totale dei crediti
		MIN(c.Crediti) AS 'Valore Minimo di crediti', -- I crediti minimi
		MAX(c.Crediti) AS 'Valore Massimo di crediti' -- I crediti massimi
	FROM Studenti s
	INNER JOIN Iscrizioni i
		ON i.StudenteId = s.StudenteId
	INNER JOIN Corsi c
		ON c.CorsoId = i.CorsoId
	GROUP BY
		s.Nome,
		s.Cognome;

-- SELECT * FROM vw_ReportCorsiperStudente