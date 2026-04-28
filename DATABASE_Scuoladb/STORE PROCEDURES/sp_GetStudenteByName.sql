-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetStudenteByName
	-- Add the parameters for the stored procedure here
	@Nome NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		StudenteId,
		Nome + ' ' + Cognome AS 'Nome Completo',
		ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'N/D') AS DataNascita,
		ISNULL(CONVERT(NVARCHAR, Email, 103), 'N/E') AS Email,
		ISNULL(CONVERT(NVARCHAR, Telefono), '000000') AS Telefono,
		ISNULL(CONVERT(CHAR(16), CodiceFiscale), 'CF-NULL') AS CodiceFiscale
	FROM Studenti
	WHERE Nome = @Nome
END
GO

-- Esecuzione della stored procedure
EXEC sp_GetStudenteByName 'Anna'; 

/* In conclusione le stored procedures sono funzioni che, una volta preparate, 
possono richiamare queste istruzioni più e più volte senza dover riscrivere il codice originale, migliorando anche prestazioni e sicurezza.*/