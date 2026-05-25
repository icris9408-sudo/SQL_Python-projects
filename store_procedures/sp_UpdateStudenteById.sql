-- =============================================
-- Author:		<Author: Cristian>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_UpdateStudenteById 
	-- Add the parameters for the stored procedure here
	@StudenteId INT,
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
	UPDATE Studenti
	   SET Nome = @Nome
		  ,Cognome = @Cognome
		  ,DataNascita = @DataNascita
		  ,Email = @Email
		  ,Telefono = @Telefono
		  ,CodiceFiscale = @CodiceFiscale
	 WHERE StudenteId = @StudenteId
END
GO

-- Inserisco i dati dello studente
EXEC sp_InsertStudente 'Samira', 'Miranda', '1988/02/10', 'samira.miranda@gmail.com', '3935426213', 'MRDSMR88189PY000';

-- Faccio un update del nome
EXEC sp_UpdateStudenteById 38, 'Sandra', 'Miranda', '1988/02/10', 'sandra.miranda@gmail.com', '3935426213', 'MRDSMR88189PY000';

select * from Studenti
