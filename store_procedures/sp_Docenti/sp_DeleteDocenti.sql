-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina i Docenti>
-- =============================================
CREATE PROCEDURE sp_DeleteDocenti
	-- Add the parameters for the stored procedure here
	@DocenteId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Docenti
	WHERE DocenteId = @DocenteId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteDocenti 29;

