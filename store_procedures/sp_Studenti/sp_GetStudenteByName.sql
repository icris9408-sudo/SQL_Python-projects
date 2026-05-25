-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetStudenteByName
	@Nome NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		StudenteId,
		Nome + ' ' + Cognome AS 'Nome Completo',
		-- 103 va bene qui perché DataNascita è una data vera e propria
		ISNULL(CONVERT(NVARCHAR(10), DataNascita, 103), 'N/D') AS DataNascita,
		-- Rimosso il 103 e specificata la lunghezza per evitare troncamenti
		ISNULL(CONVERT(NVARCHAR(100), Email), 'N/E') AS Email,
		ISNULL(CONVERT(NVARCHAR(20), Telefono), '000000') AS Telefono,
		ISNULL(CONVERT(CHAR(16), CodiceFiscale), 'CF-NULL') AS CodiceFiscale
	FROM Studenti
	-- Usando LIKE e i percentuali cerchi anche per nome parziale (es. "Cri" trova "Cristian")
	WHERE Nome LIKE '%' + @Nome + '%'
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetStudenteByName 'Anna'; 

/* In conclusione le stored procedures sono funzioni che, una volta preparate, 
possono richiamare queste istruzioni più e più volte senza dover riscrivere il codice originale, migliorando anche prestazioni e sicurezza.*/