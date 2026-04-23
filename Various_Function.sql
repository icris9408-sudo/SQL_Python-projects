-- Creazione del Database
-- CREATE DATABASE ScuolaDb;

-- Elimina il Database esistente
-- DROP Database Demo

/*
	| Tipo             | Quando usarlo							 |
| ---------------- | ------------------------------------------- |
| INT = INTEGER    | numeri interi (ID, età)  = 100 000 000      |
| DECIMAL(10,2)    | soldi (precisione!)              |
| NVARCHAR         | testo (sempre meglio di VARCHAR) |
| DATE             | solo data                        |
| DATETIME         | data + ora                       |
| BIT              | booleano (0/1)   Vero o Falso    |
| UNIQUEIDENTIFIER | GUID                             |
*/

-- Creazione della tabella Studenti
/* CREATE TABLE Studenti(
 StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(150) NOT NULL,
	Cognome NVARCHAR(150) NOT NULL,
	Email NVARCHAR(150) NULL,
	Genere CHAR(7) NOT NULL,
); */

-- SELECT = SELEZIONA
-- * = TUTTO

-- VISUALIZZA LA LISTA DEGLI STUDENTI
-- SELECT StudenteId, Nome, Cognome, Email, Genere FROM STUDENTI;

-- VISUALIZZA TUTTE LE INFORMAZIONI DALLA TABELLA Studenti
-- SELECT * FROM STUDENTI;

-- VISUALIZZA LE INFORMAZIONI Nome e Genere DALLA TABELLA Studenti
-- SELECT Nome, Cognome, Genere FROM Studenti;

-- INSERIRE DATI NELLA TABELLA Studenti
/* INSERT INTO Studenti
	(Nome, Cognome, Genere)
VALUES
	('Mario', 'Rossi', 'M'),
	('Emanuela', 'Ricci', 'F'); */

-- 'DROP TABLE' ELIMINARE TABELLA
-- DROP TABLE STUDENTI;

-- 'ALTER TABLE user DROP COLUMN object;' ELIMINARE COLONNA
/* ALTER TABLE Studenti
   DROP COLUMN DataNascita;
   */

-- 'DROP TABLE IF EXISTS' ELIMINARE TABELLA SE ESISTE
-- DROP TABLE IF EXISTS STUDENTI;

-- 'SELECT DISTINCT' NON VISUALIZZA I DUPLICATI
-- SELECT DISTINCT Nome, Cognome FROM Studenti;

-- 'DELETE FROM' ELIMINARE SINGOLI DATI
/* DELETE FROM Studenti
WHERE StudenteId = 8; */

-- 'WHERE' VISUALIZZA SOLO UNO SPECIFICO OGGETTO
/* SELECT * 
FROM STUDENTI
WHERE StudenteId = 3; */

-- 'AS' DEFINIRE UN DIFFERENTE ALIAS (CAMBIA SOLO LA VISUALIZZAZIONE) PER LA COLONNA, MA SENZA MODIFICARE
/* SELECT 
	Nome AS 'Soprannome', 
	Cognome AS 'Cognome dello Studente'
FROM Studenti 
WHERE StudenteID = 3; */

-- SELEZIONARE SOLO LE FEMMINE
/* SELECT * FROM Studenti
WHERE Genere = 'F'; */

-- SELEZIONARE SOLO I MASCHI
/* SELECT * FROM Studenti
WHERE Genere = 'M'; */

-- SELEZIONARE SOLO I MASCHI SENZA DOPPIONI
/* SELECT DISTINCT Nome, Cognome FROM Studenti
WHERE Genere = 'M'; */

-----------------------------------------------------------------------------------------------------------------------------

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

-- 'AND' FILTRO
/* SELECT * FROM Studenti WHERE Nome LIKE 'S%' AND Genere = 'F';
   SELECT * FROM Studenti WHERE Nome LIKE '%O' AND Genere = 'M'; 
*/

-- 'OR' FILTRO
/* SELECT * FROM Studenti WHERE Nome = 'Mario' OR Nome = 'Giulia'; 
   SELECT * FROM Studenti WHERE Nome = 'Mario' OR Nome = 'Alice'; -- il nome Alice non è presente, quindi visualizza solo una condizione, il quale è Mario
*/

-- 'ORDER BY object ASC' = Ascedente  / 'ORDER BY object DESC' = Decrescente
/* SELECT * FROM Studenti ORDER BY Nome DESC; -- Setta e Visualizza la colonna Nome in ordine Decrescente
   SELECT * FROM Studenti ORDER BY Cognome ASC; -- Setta e Visualizza la colonna Cognome in ordine Ascendente
*/

-- 'TOP 5' serve a visualizzare le prime 5 righe
/* SELECT TOP 5 * FROM Studenti; */

-- 'IS NOT NULL' Restituisce i primi 15 studenti dove la mail non è nullo
/* SELECT TOP 15 * FROM Studenti WHERE Email IS NOT NULL; */

-- Restituisce i primi 15 studenti dove la mail non è nullo e genere = 'F'
/* SELECT TOP 15 * FROM Studenti WHERE Email IS NOT NULL AND Genere = 'F'; */

-- Restituisce i primi 15 studenti dove la mail non è nullo e genere = 'F' o/e il nome inizia per S
/* SELECT TOP 15 * FROM Studenti WHERE Email IS NOT NULL AND Genere = 'F' OR Nome like 'S%'; */ -- Like (STRINGHE) RICERCA IL TESTO 

-- Recuperare i valori Email che sono NULL
/* SELECT * FROM Studenti WHERE Email IS NULL; */

-- UNIQUE NULL significa che la mail in questo caso è unica
/* Email NVARCHAR(100) UNIQUE NULL, */

-- FOREIGN KEY object REFERENCES table2(oggetto2) stringa di codice per richiamare il riferimento RepartoID della tabella Reparti
/* FOREIGN KEY (RepartoID) REFERENCES Reparti(RepartoID), */

/* CREATE TABLE Clienti(
	ClienteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Cognome NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) UNIQUE NULL,
	Telefono NVARCHAR(15) NOT NULL, -- Ho usato questo ALTER TABLE Clienti ADD Telefono NVARCHAR(15);-- Aggiunge Colonna Telefono
	Indirizzo_Abitazione NVARCHAR(100) NOT NULL,
	Codice_Fiscale NVARCHAR(100) NOT NULL,
); */

-- DELETE FROM Reparti WHERE Sede = 'Florida'; --Elimina sedi di Florida

/* ALTER TABLE Clienti ALTER COLUMN Cognome NVARCHAR(100) NULL;*/ -- Cambio l'oggetto (Cognome) in NULL

------ FORZARE L'INSERIMENTO DI UN DATO CHE HA COME FUNZIONE QUELLO DI ESSERE UNA PRIMARY KEY ------
/* SET IDENTITY_INSERT Clienti ON; -- sto attivando il comando di forzatura per l'inserimento dei PRIMARY KEY
INSERT INTO Clienti(ClienteID, Nome, Email, Telefono, Codice_Fiscale)
VALUES
	('1', 'Massimo', 'massimoliberti@huyt.com', '+393455789060', 'RSSMRA80A01H501U'),
	('2', 'Giuditta', 'giuditta@huyt.com', '+393342156765', 'BNCNNA92L45F205W'),
	('3', 'Libero', 'libero@huyt.com', '+393657832900', 'VRDLGU75M12L219Z'),
	('4', 'Vittoria', 'vittoria@huyt.com', '+393387654231', 'GLLSRA88P50H501X'),
	('5', 'Maria', 'maria@huyt.com', '+393324565768', 'NRIPLA82T20F205Q'),
	('6','Marco', 'marco@huyt.com', '+393446789432', 'BLULCU95E05L219S')
;
SET IDENTITY_INSERT Clienti OFF; -- sto disattivando il comando di forzatura per l'inserimento dei PRIMARY KEY */


-- EXEC sp_rename 'DettagliOrdine.Quantità','Quantita'; -- Modifica del nome della colonna

-- ALTER TABLE DettagliOrdine ADD Quantita NVARCHAR(150) NOT NULL;

-- EXEC sp_rename 'DettagliOrdine.Quantità','Quantita', 'COLUMN'; -- Modifica del nome della colonna

-- UPDATE NomeTabella SET NomeColonna = NUovoValore WHERE Valore_Nome
/* -- ESEMPIO
UPDATE Clienti
SET Cognome = 'Greco'
WHERE ClienteID = 1;

UPDATE Clienti
SET Indirizzo_Abitazione = 'Via Roma, 167'
WHERE ClienteID = 5;


SELECT * FROM Clienti WHERE ClienteID = 5; -- Aggiungere WHERE nella SELECT filtra per il valore di ClienteID

-- UPDATE CON CONDIZIONI (IMPORTANTISSIMO)
-- Aumenta stipendio solo a chi guadagna meno di 2400
UPDATE Dipendenti
SET Salario = Salario + 200
WHERE Salario < 2400;

-- Aggiungo Colonna Telefono
ALTER TABLE Dipendenti ADD Telefono NVARCHAR(15) NULL;

--Aggiungo numeri di telefono
UPDATE Dipendenti
SET Telefono = '+393442134526'
WHERE DipendenteID = 5;
UPDATE Dipendenti
SET Telefono = '+393442198726'
WHERE DipendenteID = 1;
UPDATE Dipendenti
SET Telefono = '+393333198726'
WHERE DipendenteID = 2;
UPDATE Dipendenti
SET Telefono = '+393564143566'
WHERE DipendenteID = 3;
UPDATE Dipendenti
SET Telefono = '+393442143566'
WHERE DipendenteID = 4;


UPDATE Dipendenti
SET Salario = '3200'
WHERE DipendenteID = 1;

UPDATE Dipendenti
SET Salario = Salario * 1.10 -- Ho aumentato il Salario dei dipendenti di un 10 %

UPDATE Dipendenti
SET RepartoID = 30
WHERE DipendenteID = 2; -- Ho cambiato il reparto del DipedenteID 2 

SELECT * FROM Dipendenti; -- Reparti
*/


