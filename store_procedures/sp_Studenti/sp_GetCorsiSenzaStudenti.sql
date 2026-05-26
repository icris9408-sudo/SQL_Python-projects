CREATE PROCEDURE [dbo].[sp_GetCorsiSenzaStudenti]
AS
BEGIN
	SELECT
		c.*
	FROM Corsi c
	LEFT JOIN Iscrizioni i
		ON c.CorsoId = i.CorsoId
	WHERE i.IscrizioneId is NULL
END