-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Recupera le informazioni dei corsi attraverso l'id univoco registrato>
-- =============================================
CREATE PROCEDURE sp_GetCorsiByID --nome della procedura
    @CorsoId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    CorsoId,
    NomeCorso AS 'Nome Completo',
    ISNULL(CONVERT(NVARCHAR, DescrizioneCorso, 150), 'N/D') AS 'Descrizione Corso',
    ISNULL(CONVERT(NVARCHAR, Crediti), 'N/D') AS Crediti,
    ISNULL(CONVERT(NVARCHAR, Durata), 'N/D') AS Durata
    FROM Corsi
    WHERE CorsoId = @CorsoId
END
GO

-- Esecuzione della stored procedure

-- EXEC sp_GetCorsiByID 2;
