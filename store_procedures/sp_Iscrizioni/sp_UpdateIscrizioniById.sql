-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Update i dati di un iscrizione>
-- =============================================
CREATE PROCEDURE sp_UpdateIscrizioniById
	-- Add the parameters for the stored procedure here
    @IscrId int,
	@StudenteId int,
    @CorsoId int,
    @DataIscrizione date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Iscrizioni
	   SET StudenteId = @StudenteId,
		   CorsoId = @CorsoId,
		   DataIscrizione = @DataIscrizione
	 WHERE IscrizioneId = @IscrId
END
GO

-- Inserisco i dati dello studente
EXEC sp_UpdateIscrizioniById 28, 23, 22, "2026-05-30";

select * from Iscrizioni