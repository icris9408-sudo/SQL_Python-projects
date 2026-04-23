/*
COSA SONO GLI OPERATORI

Gli operatori sono simboli/parole che permettono di:
	.confrontare valori
	.fare calcoli
	.filtrare risultati
*/

/*
	OPERATORI DI CONFRONTO
	Usati con Where
	operate				| Significato |
	--------------------|-------------|
	=                   | Uguale      |
	!= / <>				| Diverso     |
	>                   | Maggiore	  |
	<                   | Minore	  |
	>=					| Maggiore o Uguale |
	<=                  | Minore o Uguale
*/
use ScuolaDb;
SELECT * FROM Studenti where StudenteId = 3;

/*
	Operatori Logici
	combinano più condizioni
	operate			| Significato |
	----------------|-------------|
	AND             | Tutte vere  |
	OR              | Almeno una vera|
	NOT             | Nega        |
*/


-- Inserimento delle righe nella tabella studenti
INSERT INTO Studenti (Nome, Cognome, Email, Genere)
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


-- like 'm%' (m....)
-- like '%o' (....o)
SELECT * FROM Studenti where Nome like 'M%' and Genere = 'F';
SELECT * FROM Studenti where Nome like '%e' and Genere = 'M';

SELECT * FROM Studenti where Nome = 'Mario' OR Nome = 'Alice';

-- ASC = Ascendente / DESC = Decrescente
SELECT * FROM Studenti Order by Nome Desc;
SELECT * FROM Studenti Order by Cognome ASC;

-- TOP 5 serve a visualizzare i primi (5 o 10...) righe 
SELECT TOP 5 * FROM Studenti;

-- Restituisce i primi 5 studenti dove la mail non è nullo
SELECT TOP 25 * FROM Studenti WHERE Email is not null;

-- Restituisce i primi 5 studenti dove la mail non è nullo e genere = F (Femmina)
SELECT 
	TOP 5 * 
FROM Studenti 
WHERE Email is not null and Genere = 'F';


-- Like (STRINGHE) RICERCA IL TESTO 
-- (Mario, 'Giulia', Alissio)
SELECT 
	 * 
FROM Studenti 
where Nome IN ('Alice', 'Melania' , 'Giulia') AND Email IS NOT NULL;

select * from Studenti WHERE Email is null;

