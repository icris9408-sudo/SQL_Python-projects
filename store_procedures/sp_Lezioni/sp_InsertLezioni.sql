-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Inserisci Studente>
-- =============================================
CREATE PROCEDURE sp_InsertLezioni
	-- Add the parameters for the stored procedure here
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
    INSERT INTO [dbo].[Lezioni]
	        (CorsoId,
            AulaId,
            DataLezione,
            OraInizio,
            OraFine)
     VALUES
	        (@CorsoId,
            @AulaId,
            @DataLezione,
            @OraInizio,
            @OraFine)

END
GO

-- Comando store procedures
-- EXEC sp_InsertLezioni 27, 27, '2026-04-30', '09:00', '14:00';