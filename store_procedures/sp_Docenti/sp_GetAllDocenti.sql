---- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all docenti from Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllDocenti -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM Docenti;
END
GO


-- Esecuzione della stored procedure
-- EXEC sp_GetAllDocenti;
