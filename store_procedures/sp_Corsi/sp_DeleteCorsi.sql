-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina i Corsi>
-- =============================================
CREATE PROCEDURE sp_DeleteCorsi
	-- Add the parameters for the stored procedure here
	@CorsoId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Corsi
	WHERE CorsoId = @CorsoId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteCorsi 31;
