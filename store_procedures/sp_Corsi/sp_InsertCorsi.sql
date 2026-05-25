-- =============================================
-- Author:		<Cristian>
-- Create date: <Create Date,,>
-- Description:	<Inserisco i dati di un corso>
-- =============================================
CREATE PROCEDURE sp_InsertCorso
	-- Add the parameters for the stored procedure here
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
    INSERT INTO [dbo].[Corsi]
           (NomeCorso,
           DescrizioneCorso,
           Crediti,
           Durata)
     VALUES
          (@NomeCorso,
           @DescrizioneCorso,
           @Crediti,
           @Durata)

END
GO

-- Comando store procedures
-- EXEC sp_InsertCorso 'Cyber Security Intermedio', 'Cyber Security Intermedio', '16', '67';
