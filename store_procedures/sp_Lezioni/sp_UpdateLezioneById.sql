-- =============================================
-- Author:		<Author: Cristian>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_UpdateLezioneById 
	-- Add the parameters for the stored procedure here
	@LezioneId INT,
	@CorsoId INT,
    @AulaId INT,
    @DataLezione date,
    @OraInizio datetime,
    @OraFine datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Lezioni
	SET CorsoId = @CorsoId,
		AulaId = @AulaId,
		DataLezione = @DataLezione,
		OraInizio = @OraInizio,
		OraFine = @OraFine
	WHERE LezioneId = @LezioneId
END
GO

-- Faccio un update del nome
-- EXEC sp_UpdateLezioneById 27, 23, 30, '2026-04-30', '09:00', '14:00';