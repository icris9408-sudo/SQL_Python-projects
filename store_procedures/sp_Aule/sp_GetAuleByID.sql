-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Recupera le informazioni dei corsi attraverso l'id univoco registrato>
-- =============================================
CREATE PROCEDURE sp_GetAuleByID --nome della procedura
    @AulaId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    AulaId,
    NomeAula AS 'Nome Aula',
    ISNULL(CONVERT(NVARCHAR, Capacita, 10), 'N/D') AS 'Capacita'
    FROM Aule
    WHERE AulaId = @AulaId
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetAuleByID 2;