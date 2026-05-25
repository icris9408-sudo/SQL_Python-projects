-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina uno delle iscrizioni>
-- =============================================
CREATE PROCEDURE sp_DeleteIscrizioni
	-- Add the parameters for the stored procedure here
	@IscrId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Iscrizioni
	WHERE IscrizioneId = @IscrId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteIscrizioni 32;