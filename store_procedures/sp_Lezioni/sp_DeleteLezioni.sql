-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Elimina una lezione in base all' ID>
-- =============================================
CREATE PROCEDURE sp_DeleteLezioni
	-- Add the parameters for the stored procedure here
	@LezioneId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Lezioni
	WHERE LezioneId = @LezioneId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteLezioni 28;