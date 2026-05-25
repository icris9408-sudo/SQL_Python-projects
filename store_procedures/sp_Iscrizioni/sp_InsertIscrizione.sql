-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Inserisco i dati di un'iscrizione>
-- =============================================
CREATE PROCEDURE sp_InsertIscrizione
	-- Add the parameters for the stored procedure here
    @StudenteId int,
    @CorsoId int,
    @DataIscrizione date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [dbo].[Iscrizioni]
           (StudenteId,
            CorsoId,
            DataIscrizione)
     VALUES
          (@StudenteId,
           @CorsoId,
           @DataIscrizione)

END
GO

-- Comando store procedures
-- EXEC sp_InsertIscrizione 31, 30, '2026-01-23';

