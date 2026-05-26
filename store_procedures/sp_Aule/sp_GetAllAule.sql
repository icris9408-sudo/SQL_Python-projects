---- =============================================
-- Author:		Cristian
-- Create date: 28/04/2026
-- Description:	Get all aule from Database ScuolaDb
-- =============================================
CREATE PROCEDURE sp_GetAllAule -- nome della procedura
AS
BEGIN
    -- Insert statements for procedure here
	SELECT * FROM Aule;
END
GO


-- Esecuzione della stored procedure
-- EXEC sp_GetAllAule;
