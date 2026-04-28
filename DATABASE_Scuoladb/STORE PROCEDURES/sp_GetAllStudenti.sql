-- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all students from Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllStudenti -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM Studenti;
END
GO


-- Esecuzione della stored procedure
EXEC sp_GetAllStudenti;