---- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all information from DocentiCorso stored in Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllDC -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM DocentiCorso;
END
GO


-- Esecuzione della stored procedure
-- EXEC sp_GetAllDC;
