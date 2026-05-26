-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina un DocenteCorso in base all' ID>
-- =============================================
CREATE PROCEDURE sp_DeleteDC
	-- Add the parameters for the stored procedure here
	@Id INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE DocentiCorso
	WHERE Id = @Id
END
GO

-- Comando store procedures
-- EXEC sp_DeleteDC 28;