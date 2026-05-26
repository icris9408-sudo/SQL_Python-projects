-- =============================================
-- Author:		Cristian
-- Create date: <Create Date,,>
-- Description:	<Recupera le informazioni dei DocentiCorsi attraverso l'id univoco registrato>
-- =============================================
CREATE PROCEDURE sp_GetDCByID --nome della procedura
    @Id INT  --definiamo  i parametri 
AS
BEGIN 
    SET NOCOUNT ON;
    --inseriamo qui la nostra query
    SELECT 
    Id,
    DocenteId AS 'Id Docente',
    CorsoId AS 'Capacità'
    FROM DocentiCorso
    WHERE Id = @Id
END
GO

-- Esecuzione della stored procedure
-- EXEC sp_GetDCByID 2;