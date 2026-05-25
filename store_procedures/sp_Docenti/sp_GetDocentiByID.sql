-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Recupera le informazioni dei docenti attraverso l'id univoco registrato>
-- =============================================
CREATE PROCEDURE sp_GetDocentiByID --nome della procedura
    @DocenteId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    DocenteId,
    Nome + ' ' + Cognome AS 'Nome Completo',
    ISNULL(CONVERT(NVARCHAR, Email), 'N/E') AS Email,
    ISNULL(CONVERT(NVARCHAR, Specializzazione), 'N/D') AS Specializzazione
    FROM Docenti
    WHERE DocenteId = @DocenteId
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetDocentiByID 2;