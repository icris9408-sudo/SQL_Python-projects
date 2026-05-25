---- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all Iscrizioni from Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllIscrizioni -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM Iscrizioni;
END
GO


-- Esecuzione della stored procedure
-- EXEC sp_GetAllIscrizioni;