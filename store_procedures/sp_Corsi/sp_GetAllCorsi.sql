---- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all corsi from Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllCorsi -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM Corsi;
END
GO


-- Esecuzione della stored procedure
-- EXEC sp_GetAllCorsi;
