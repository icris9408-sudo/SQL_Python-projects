-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetStudenteByID --nome della procedura
    @StudenteId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    StudenteId,
    Nome + ' ' + Cognome AS 'Nome Completo',
    ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'N/D') AS DataNascita,
    ISNULL(CONVERT(NVARCHAR, Email), 'N/E') AS Email,
    ISNULL(CONVERT(NVARCHAR, Telefono), 'N/D') AS Telefono,
    ISNULL(CONVERT(CHAR(16), CodiceFiscale), 'CF-NULL') AS CodiceFiscale
    FROM Studenti
    WHERE StudenteId = @StudenteId
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetStudenteByID; 

/* In conclusione le stored procedures sono funzioni che, una volta preparate, 
possono richiamare queste istruzioni più e più volte senza dover riscrivere il codice originale, migliorando anche prestazioni e sicurezza.*/