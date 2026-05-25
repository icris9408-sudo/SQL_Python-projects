-- =============================================
-- Author:		Cristian
-- Create date: 28-04-2026
-- Description:	Store procedures che visualizza se gli studenti hanno la data di nascita 
--				(il ragionamento si trova nel file 28_04_26)
-- =============================================
CREATE PROCEDURE sp_GestioneStudenti 
AS
BEGIN
IF EXISTS(
	SELECT 1
	FROM Studenti 
	WHERE DataNascita IS NULL
	)
BEGIN

	SELECT 
		Nome, 
		Cognome,
		CASE
			WHEN DataNascita IS NULL 
			THEN 'Non è presente la data di nascita'
			ELSE 'Data presente'
		END AS Stato
	FROM Studenti
END
ELSE
BEGIN

	PRINT 'Tutti gli studenti hanno la data di nascita'
END
END
GO

-- Esecuzione della stored procedures
EXEC sp_GestioneStudenti;