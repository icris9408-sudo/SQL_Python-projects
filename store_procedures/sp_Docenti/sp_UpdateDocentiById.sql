-- =============================================
-- Author:		<Author: Cristian>
-- Create date: <Create Date,,>
-- Description:	<Update Docenti by Id>
-- =============================================
CREATE PROCEDURE sp_UpdateDocentiById 
	-- Add the parameters for the stored procedure here
	@DocenteId INT,
	@Nome nvarchar(50),
    @Cognome nvarchar(50),
    @Email nvarchar(150),
    @Specializzazione nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Docenti
	   SET Nome = @Nome,
		   Cognome = @Cognome,
		   Email = @Email,
		   Specializzazione = @Specializzazione
	 WHERE DocenteId = @DocenteId
END
GO


-- Faccio un update del nome
-- EXEC sp_UpdateDocentiById  31, 'Sandra', 'Miranda', 'sandra.miranda@gmail.com', 'Reti';