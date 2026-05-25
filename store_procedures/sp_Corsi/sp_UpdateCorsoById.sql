-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Update i dati di un corso>
-- =============================================
CREATE PROCEDURE sp_UpdateCorsoById
	-- Add the parameters for the stored procedure here
	@CorsoId INT,
	@NomeCorso nvarchar(50),
    @DescrizioneCorso nvarchar(50),
    @Crediti nvarchar(150),
    @Durata nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Corsi
	   SET NomeCorso = @NomeCorso,
		   DescrizioneCorso = @DescrizioneCorso,
		   Crediti = @Crediti,
		   Durata = @Durata
	 WHERE CorsoId = @CorsoId
END
GO

-- Inserisco i dati dello studente
-- EXEC sp_UpdateCorsoById 32, 'Cyber Security Intermedio', 'Cyber Security Intermedio', '16', '67';