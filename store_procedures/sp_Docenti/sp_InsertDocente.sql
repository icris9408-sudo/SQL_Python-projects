-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Inserisci Docente>
-- =============================================
CREATE PROCEDURE sp_InsertDocente
	-- Add the parameters for the stored procedure here
	@Nome nvarchar(50),
    @Cognome nvarchar(50),
    @Email nvarchar(150),
    @Specializzazione varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [dbo].[Docenti]
           (Nome,
           Cognome,
           Email,
           Specializzazione)
     VALUES
          (@Nome,
           @Cognome,
           @Email,
           @Specializzazione)

END
GO


-- Comando store procedures
-- EXEC sp_InsertDocente 'Reginaldo', 'Rigoni', 'reginaldo.rigoni@email.it', 'Python';
