-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetDocenteBySurname
	@Cognome NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		DocenteId,
		Nome + ' ' + Cognome AS 'Nome Completo',
		-- Rimosso il 103 e specificata la lunghezza per evitare troncamenti
		ISNULL(CONVERT(NVARCHAR(100), Email), 'N/E') AS Email,
		ISNULL(CONVERT(NVARCHAR(20), Specializzazione), 'N/E') AS Specializzazione
	FROM Docenti
	-- Usando LIKE e i percentuali cerchi anche per nome parziale (es. "Cri" trova "Cristian")
	WHERE Cognome LIKE '%' + @Cognome + '%'
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetDocenteBySurname 'Miranda'; 

/* In conclusione le stored procedures sono funzioni che, una volta preparate, 
possono richiamare queste istruzioni più e più volte senza dover riscrivere il codice originale, migliorando anche prestazioni e sicurezza.*/