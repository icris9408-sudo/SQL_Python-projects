-- =============================================
-- Author:		<Cristian>
-- Create date: <15/05/2026,>
-- Description:	<Store Procedure Lista delle Tabelle>
-- =============================================
CREATE PROCEDURE sp_ListaTabelle
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TABLE_NAME 
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_TYPE='BASE TABLE'
END
GO
