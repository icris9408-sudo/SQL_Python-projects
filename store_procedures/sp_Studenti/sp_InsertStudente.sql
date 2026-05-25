-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Inserisci Studente>
-- =============================================
CREATE PROCEDURE sp_InsertStudente
	-- Add the parameters for the stored procedure here
	@Nome nvarchar(50),
    @Cognome nvarchar(50),
    @DataNascita date,
    @Email nvarchar(150),
    @Telefono varchar(50),
    @CodiceFiscale char(16)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [dbo].[Studenti]
           (Nome,
           Cognome,
           DataNascita,
           Email,
           Telefono,
           CodiceFiscale)
     VALUES
          (@Nome,
           @Cognome,
           @DataNascita,
           @Email,
           @Telefono,
           @CodiceFiscale)

END
GO


-- Comando store procedures
-- EXEC sp_InsertStudente 31, 'Cyber Security Intermedio', 'Cyber Security Intermedio', '16', '67';
