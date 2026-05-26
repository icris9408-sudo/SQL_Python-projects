-- Lista degli studenti iscritti ad un corso
CREATE VIEW vw_StudentiIscritti
AS
	SELECT
		ISNULL(s.Nome + ' ' + s.Cognome, 'N/D') as 'Nome completo dello studente',
		ISNULL(s.Email, 'N/D') as 'Email',
		ISNULL(CONVERT(VARCHAR, S.DataNascita, 100), 'YYYY/MM/DD') as 'Data Nascita',
		ISNULL(c.NomeCorso, 'N/D')as 'Nome Corso',
		ISNULL(c.DescrizioneCorso, 'N/D')as 'Descrizione Corso'
	FROM Studenti s
	INNER JOIN Iscrizioni i
		ON i.StudenteId = s.StudenteId
	INNER JOIN Corsi c
		ON c.CorsoId = i.CorsoId

-- SELECT * FROM vw_StudentiIscritti
