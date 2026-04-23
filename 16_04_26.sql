USE ScuolaDb;

SELECT * FROM Studenti;

SELECT Nome, Cognome, Genere FROM Studenti;


SELECT DISTINCT Nome, Cognome FROM Studenti; /* SELECT DISTINCT NON VISUALIZZA I DUPLICATI */

SELECT DISTINCT Nome, Cognome, Genere FROM Studenti;

-- VISUALIZZA SOLO UNO SPECIFICO OGGETTO
SELECT * 
FROM STUDENTI
WHERE StudenteId = 3;

SELECT Nome, Cognome 
FROM Studenti 
WHERE StudenteID = 3;

-- DEFINIRE UN DIFFERENTE ALIAS (CAMBIA SOLO LA VISUALIZZAZIONE) PER LA COLONNA, MA SENZA MODIFICARE
SELECT 
	Nome AS 'Soprannome', 
	Cognome AS 'Cognome dello Studente'
FROM Studenti 
WHERE StudenteID = 3;

-- SELEZIONARE SOLO LE FEMMINE
SELECT * FROM Studenti
WHERE Genere = 'F';

-- SELEZIONARE SOLO I MASCHI
SELECT * FROM Studenti
WHERE Genere = 'M';

-- SELEZIONARE SOLO I MASCHI SENZA DOPPIONI
SELECT DISTINCT Nome, Cognome FROM Studenti
WHERE Genere = 'M';

-- SELEZIONARE SOLO NOMI CHE INIZIANO PER UN DETERMINATO CARATTERE
SELECT DISTINCT Nome, Cognome, Genere FROM Studenti
WHERE Nome LIKE 'E%';

/*
COSA SONO GLI OPERATORI?

Gli operatori sono simboli/parole che permettono di::
		.confrontare valori = OPERATORI DI CONFRONTO
		.fare calcoli
		.filtrare risultati
*/

/*
	OPERATORI DI CONFRONTO usando Where
	Operatori				|	Definition		|
	--------------------------------------------|
	=						| Uguale			|
	!= / <>					| Diverso			|
	>						| Maggiore			|
	<						| Minore			|
	>=						| Maggiore o Uguale |
	<=						| Minore o Uguale	|
*/

/*
	OPERATORI LOGICI - Combinano più condizioni
	Operatori				|		 Definition			 |
	-----------------------------------------------------|
	AND						| Tutte vere				 |
	OR						| Almeno una condizione vera |
	NOT						| Negazione					 |
	ASC						| Ordina in Ascedente		 |
	DESC					| Ordina in Decrescente		 |
*/

SELECT * FROM Studenti
INSERT INTO Studenti(Nome, Cognome, Email, Genere)
VALUES
('Mario','Rossi','mario1@email.com','M'),
('Luca','Bianchi','luca2@email.com','M'),
('Giulia','Verdi','giulia3@email.com','F'),
('Anna','Ferrari','anna4@email.com','F'),
('Marco','Romano','marco5@email.com','M'),
('Paolo','Ricci','paolo6@email.com','M'),
('Sara','Gallo','sara7@email.com','F'),
('Davide','Costa','davide8@email.com','M'),
('Elena','Fontana','elena9@email.com','F'),
('Simone','Greco','simone10@email.com','M'),
('Francesca','Conti','francesca11@email.com','F'),
('Andrea','DeLuca','andrea12@email.com','M'),
('Chiara','Marino','chiara13@email.com','F'),
('Alessio','Riva','alessio14@email.com','M'),
('Valentina','Lombardi','valentina15@email.com','F'),
('Giorgio','Barbieri','giorgio16@email.com','M'),
('Martina','Moretti','martina17@email.com','F'),
('Stefano','Ferraro','stefano18@email.com','M'),
('Roberta','Caruso','roberta19@email.com','F'),
('Alberto','Giordano','alberto20@email.com','M'),
('Federica','Colombo','federica21@email.com','F'),
('Claudio','Silvestri','claudio22@email.com','M'),
('Marta','Testa','marta23@email.com','M'),
('Daniele','Villa','daniele24@email.com','M'),
('Silvia','Serra','silvia25@email.com','F'),
('Emanuele','Leone','emanuele26@email.com','M'),
('Ilaria','Santoro','ilaria27@email.com','F'),
('Matteo','Fiore','matteo28@email.com','M'),
('Noemi','Ruggiero','noemi29@email.com','F'),
('Fabio','Pellegrini','fabio30@email.com','M');

-- 'AND' FILTRO
SELECT * FROM Studenti 
WHERE  Nome LIKE 'S%' AND Genere = 'F';

SELECT * FROM Studenti
WHERE Nome LIKE '%O' AND Genere = 'M';

-- 'OR' FILTRO
SELECT * FROM Studenti 
WHERE Nome = 'Mario' OR Nome = 'Giulia';

SELECT * FROM Studenti 
WHERE Nome = 'Mario' OR Nome = 'Alice'; -- il nome Alice non è presente, quindi visualizza solo una condizione, il quale è Mario

-- 'ORDER BY object ASC' = Ascedente  / 'ORDER BY object DESC' = Decrescente
SELECT * FROM Studenti ORDER BY Nome DESC; -- Setta e Visualizza la colonna Nome in ordine Decrescente

SELECT * FROM Studenti ORDER BY Cognome ASC; -- Setta e Visualizza la colonna Cognome in ordine Ascendente

-- 'TOP 5' serve a visualizzare le prime 5 righe
SELECT TOP 5 * FROM Studenti;

-- 'IS NOT NULL' Restituisce i primi 15 studenti dove la mail non è nullo
SELECT TOP 15 * FROM Studenti WHERE Email IS NOT NULL;

-- Restituisce i primi 15 studenti dove la mail non è nullo e genere = 'F'
SELECT TOP 15 * FROM Studenti 
WHERE Email IS NOT NULL AND Genere = 'F';

-- Restituisce i primi 15 studenti dove la mail non è nullo e genere = 'F' o/e il nome inizia per S
SELECT TOP 15 * FROM Studenti 
WHERE Email IS NOT NULL AND Genere = 'F' OR Nome like 'S%';

-- 'IN' Restituisce i nomi della lista ()
SELECT * FROM Studenti 
WHERE Nome IN ('Mario', 'Giulia', 'Alessio');

-- ESERCIZIO
SELECT DISTINCT Nome, Cognome, Email, Genere FROM Studenti 
WHERE Nome IN ('Mario', 'Giulia', 'Alessio') AND Email is not null;

-- ESERCIZIO
SELECT * FROM Studenti 
WHERE Nome IN ('Mario', 'Giulia', 'Alessio') AND Email is not null;

-- Recuperare i valori Email che sono NULL
SELECT * FROM Studenti WHERE Email IS NULL;