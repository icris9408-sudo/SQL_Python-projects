-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Update i dati di un corso>
-- =============================================
CREATE PROCEDURE sp_UpdateAuleById
	-- Add the parameters for the stored procedure here
       @AulaId INT,
	   @NomeAula  nvarchar(50),
       @Capacita  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Aule
	   SET NomeAula = @NomeAula,
		   Capacita = @Capacita
	 WHERE AulaId = @AulaId
END
GO

-- Inserisco i dati dello studente
-- EXEC sp_UpdateAuleById 31, 'Aula 18', 50;