-- 1. Elimino il vincolo di Foreign Key esistente
ALTER TABLE DocentiCorso
DROP CONSTRAINT FK__DocentiCo__Docen__6FE99F9F;
GO

-- 2. Ricreo il vincolo aggiungendo ON DELETE CASCADE
-- (Ne approfitto per dargli un nome più leggibile e pulito)
ALTER TABLE DocentiCorso
ADD CONSTRAINT FK_DocentiCorso_Docenti 
FOREIGN KEY (DocenteId) REFERENCES Docenti(DocenteId)
ON DELETE CASCADE;
GO