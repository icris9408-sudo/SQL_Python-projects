-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Recupera le informazioni delle iscrizioni attraverso l'id univoco registrato>
-- =============================================
CREATE PROCEDURE sp_GetIscrizioniByID --nome della procedura
    @IscrId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    CorsoId,
    StudenteId,
    CorsoId,
    ISNULL(CONVERT(date, DataIscrizione), 'N/D') AS 'Data Iscrizione'
    FROM Iscrizioni
    WHERE IscrizioneId = @IscrId
END
GO

-- Esecuzione della stored procedure

-- EXEC sp_GetIscrizioniByID 2;
