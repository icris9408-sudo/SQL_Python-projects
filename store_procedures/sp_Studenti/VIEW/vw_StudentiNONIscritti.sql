CREATE VIEW vw_StudentiNONIscritti
AS
	SELECT
		ISNULL(s.Nome + ' ' + s.Cognome, 'N/D') as 'Nome completo dello studente',
		ISNULL(s.Email, 'N/D') as 'Email',
		ISNULL(CONVERT(VARCHAR, S.DataNascita, 100), 'YYYY/MM/DD') as 'Data Nascita',
		ISNULL(c.NomeCorso, 'N/D')as 'Nome Corso',
		ISNULL(c.DescrizioneCorso, 'N/D')as 'Descrizione Corso'
	FROM Studenti s
	LEFT JOIN Iscrizioni i
		ON i.StudenteId = s.StudenteId
	LEFT JOIN Corsi c
		ON c.CorsoId = i.CorsoId
	WHERE c.NomeCorso IS NULL

-- SELECT * FROM vw_StudentiNONIscritti

-- Restituire il numero totale dei corsi 
-- Somma totale dei crediti
-- Media totale dei crediti

