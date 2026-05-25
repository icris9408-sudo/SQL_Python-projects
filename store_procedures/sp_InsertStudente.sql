-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
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

-- Esecuzione della store procedure
-- EXEC sp_GetStudenteByName 'Samira';

-- query = EXEC sp_InsertStudente 'Samira', 'Miranda', '1988/02/10', 'samira.miranda@gmail.com', '3935426213', 'MRDSMR88189PY000';
-- EXEC sp_InsertStudente 'Samira', 'Miranda', '1988/02/10', 'samira.miranda@gmail.com', '3935426213', 'MRDSMR88189PY000';
