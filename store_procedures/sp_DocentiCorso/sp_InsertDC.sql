-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Inserisco i dati di un docente collegato ad un corso>
-- =============================================
CREATE PROCEDURE sp_InsertDC
	-- Add the parameters for the stored procedure here
	@DocenteId INT,
    @CorsoId INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [dbo].[DocentiCorso]
           (DocenteId,
           CorsoId)
     VALUES
          (@DocenteId,
           @CorsoId)

END
GO

-- Comando store procedures
-- EXEC sp_InsertDC '16', '67';