/* Uso il database ScuolaDb per queste query */
-- VISUALIZZARE I DATI
SELECT * FROM Aule; -- 30
SELECT * FROM Corsi; -- 30
SELECT * FROM Docenti; -- 30
SELECT * FROM DocentiCorso; -- 30 Corso
SELECT * FROM Iscrizioni; -- 28 studenti al corso
SELECT * FROM Lezioni; -- 26 Corsi e Aule
SELECT * FROM Studenti; -- 37

SELECT * FROM Aule WHERE AulaId = 10;

--
SELECT NomeAula FROM Aule WHERE Capacita > 30;

--
SELECT TOP 10 * FROM Studenti;

--
SELECT * FROM Corsi WHERE Crediti < 7 AND Durata > 30;

--
SELECT DISTINCT * FROM Studenti WHERE DataNascita IS NULL;

-- Come convertire i dati
SELECT 
	StudenteId,
	Nome + ' ' + Cognome AS 'Nome Completo',
	ISNULL(CONVERT(NVARCHAR, DataNascita, 105), 'Data non trovata') AS 'Data Nascita'
FROM Studenti;

--------------------------- 1. TUTTI I JOIN (LEFT JOIN, RIGHT, INNER JOIN, JOIN)---------------------------

-- Studenti iscritti ad un corso
SELECT
	s.StudenteId,
	s.Nome + ' ' + s.Cognome AS 'Nome Completo',
	c.NomeCorso AS 'Nome Corso',
	c.Durata
FROM Studenti s
JOIN Iscrizioni i
	ON i.StudenteId = s.StudenteId
JOIN Corsi c
	ON c.CorsoId = i.CorsoId;

-- Studenti iscritti ad un corso
SELECT
	s.StudenteId,
	s.Nome + ' ' + s.Cognome AS 'Nome Completo',
	c.NomeCorso AS 'Nome Corso',
	c.Durata
FROM Studenti s
JOIN Iscrizioni i
	ON i.StudenteId = s.StudenteId
JOIN Corsi c
	ON c.CorsoId = i.CorsoId;

-- Studenti iscritti ad un corso anche quelli che non hanno un corso
SELECT
	s.StudenteId,
	s.Nome + ' ' + s.Cognome AS 'Nome Completo',
	ISNULL(c.NomeCorso, 'NON PRESENTE') AS 'Nome Corso',
	ISNULL(c.Durata, 0) AS 'Durata', -- in questo caso essendo un numero, si inserisce 0 anzichè un testo
	COUNT(s.StudenteId) AS 'Totale Studenti'
FROM Studenti s
LEFT JOIN Iscrizioni i
	ON i.StudenteId = s.StudenteId
LEFT JOIN Corsi c
	ON c.CorsoId = i.CorsoId
GROUP BY s.StudenteId, s.Nome, s.Cognome, c.NomeCorso, c.Durata
ORDER BY s.Nome;

--------------------------- 2. CONDIZIONE IF/ELSE (CASE THEN) ---------------------------
IF EXISTS(SELECT 1 FROM Studenti)
BEGIN
	SELECT * FROM Studenti
	WHERE StudenteId = 15
END
ELSE
BEGIN
	PRINT 'Studente Non Trovato'
END;

-- Se esiste uno studente con data di nascita NULL, seleziona tutti i NULL dalla tabella studenti sennò stampa il messaggio 'La data di nascita è presente'
IF EXISTS(SELECT 1 FROM Studenti WHERE DataNascita IS NULL)
BEGIN
	SELECT * FROM Studenti
	WHERE DataNascita IS NULL
END
ELSE
BEGIN
	PRINT 'La data di nascita è presente'
END;

-- 
IF EXISTS(
	SELECT 1
	FROM Studenti 
	WHERE DataNascita IS NULL
	)
BEGIN
	SELECT 
		Nome, 
		Cognome,
		CASE -- CONDIZIONE CHE VERIFICA SE SONO PRESENTI DATE DI NASCITA e VA A CREARE UNA NUOVA COLONNA
			WHEN DataNascita IS NULL THEN 'Non è presente la data di nascita'
			ELSE 'Data presente'
		END AS Stato
	FROM Studenti
END
ELSE
BEGIN
	PRINT 'Tutti gli studenti hanno la data di nascita'
END;
--------------------------- 3. STORE PROCEDURE ---------------------------

--------------------------- 4. VIEW = VISTE ---------------------------

--------------------------- 5. BACKUP STANDARD E AUTOMATIZZAZIONE DEL DB ---------------------------