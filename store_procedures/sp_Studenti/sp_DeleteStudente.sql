-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_DeleteStudente
	-- Add the parameters for the stored procedure here
	@StudenteId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Studenti
	WHERE StudenteId = @StudenteId
END
GO

-- Comando store procedures
-- EXEC sp_DeleteStudente 38, 'Sandra', 'Miranda', '1988/02/10', 'sandra.miranda@gmail.com', '3935426213', 'MRDSMR88189PY000';