-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Inserisco i dati di un' aula>
-- =============================================
CREATE PROCEDURE sp_InsertAule
	-- Add the parameters for the stored procedure here
	@NomeAula nvarchar(50),
    @Capacita nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [dbo].[Aule]
           (NomeAula,
           Capacita)
     VALUES
           (@NomeAula,
           @Capacita)
END
GO

-- Comando store procedures
-- EXEC sp_InsertAule 'Aula 18', 50;
