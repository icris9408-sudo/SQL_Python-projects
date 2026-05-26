-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Update i dati di un corso>
-- =============================================
CREATE PROCEDURE sp_UpdateDCById
	-- Add the parameters for the stored procedure here
       @Id INT,
	   @DocenteId INT,
       @CorsoId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE DocentiCorso
	   SET DocenteId = @DocenteId,
		   CorsoId = @CorsoId
	 WHERE Id = @Id
END
GO

-- Inserisco i dati dello studente
-- EXEC sp_UpdateDCById 27, 22, 17;