-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetLezioniByID --nome della procedura
    @LezioneId INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    LezioneId AS 'ID Lezione',
    CorsoId AS 'ID Corso',
    AulaId AS 'ID Aula',
    ISNULL(CONVERT(DATE, DataLezione, 103), 'N/D') AS 'Data Lezione',
    ISNULL(CONVERT(DATETIME, OraInizio), 'N/E') AS 'Ora Inizio',
    ISNULL(CONVERT(DATETIME, OraFine), 'N/E') AS 'Ora Fine'
    FROM Lezioni
    WHERE LezioneId = @LezioneId
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetLezioniByID 3;

/* In conclusione le stored procedures sono funzioni che, una volta preparate, 
possono richiamare queste istruzioni più e più volte senza dover riscrivere il codice originale, migliorando anche prestazioni e sicurezza.*/