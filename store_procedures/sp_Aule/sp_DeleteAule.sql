-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina un aula in base all' ID>
-- =============================================
CREATE PROCEDURE sp_DeleteAule
	-- Add the parameters for the stored procedure here
	@AulaId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Aule
	WHERE AulaId = @AulaId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteAule 31;
