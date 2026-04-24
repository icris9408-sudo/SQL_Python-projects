-- ESERCIZI DEL 16/04/2026

-- ESERCIZIO
SELECT DISTINCT Nome, Cognome, Email, Genere FROM Studenti 
WHERE Nome IN ('Mario', 'Giulia', 'Alessio') AND Email is not null;

-- ESERCIZIO
SELECT * FROM Studenti 
WHERE Nome IN ('Mario', 'Giulia', 'Alessio') AND Email is not null;
-----------------------------------------------------------------------------------------------------------

-- QUIZ del 17/04/2026

CREATE DATABASE Aziendadb;

USE Aziendadb;

-- CREAZIONE TABELLE DATABASE --
CREATE TABLE Reparti(
	RepartoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Sede NVARCHAR(100) NULL,
);

CREATE TABLE Progetti(
	ProgettoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Budget DECIMAL(12,2) NULL,
	Data_Inizio DATE,
	Data_Fine DATE,
);

CREATE TABLE Dipendenti(
	DipendenteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Cognome NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) UNIQUE NULL, -- UNIQUE NULL significa che la mail in questo caso è unica
	Stipendio DECIMAL(10,2) NULL,
	Data_Assunzione DATE,
	RepartoID INT,
	FOREIGN KEY (RepartoID) REFERENCES Reparti(RepartoID), -- stringa di codice per richiamare il riferimento RepartoID della tabella Reparti
);

CREATE TABLE Clienti(
	ClienteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) NOT NULL,
	Cognome NVARCHAR(100) NULL,
	Email NVARCHAR(100) UNIQUE NULL,
	Telefono NVARCHAR(15) NOT NULL, -- Ho usato questo ALTER TABLE Clienti ADD Telefono NVARCHAR(15);-- Aggiunge Colonna Telefono
	Indirizzo_Abitazione NVARCHAR(100) NULL,
	Codice_Fiscale NVARCHAR(100) NOT NULL,
);

CREATE TABLE Ordini (
	OrdineID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	ClienteID INT,
	Data_Ordine DATE,
	Totale DECIMAL(10,2),
	FOREIGN KEY (ClienteID) REFERENCES Clienti(ClienteID),
);

CREATE TABLE DettagliOrdine(
	DettaglioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	OrdineID INT,
	Prodotto NVARCHAR(50) NOT NULL,
	Quantità INT,
	Prezzo_Unitario DECIMAL(10,2),
	FOREIGN KEY (OrdineID) REFERENCES Ordini(OrdineID),
);

CREATE TABLE Assegnazioni(
	DipendenteID INT,
	ProgettoID INT,
	Ruolo NVARCHAR(50) NULL,
	PRIMARY KEY (DipendenteID, ProgettoID), -- due Chiavi primarie
	FOREIGN KEY (DipendenteID) REFERENCES Dipendenti(DipendenteID),
	FOREIGN KEY (ProgettoID) REFERENCES Progetti(ProgettoID),
);

-- DROP Aziendadb; -- Elimina database Aziendadb
-- DROP TABLE Reparti; -- cancellare tabella reparti
-- DROP TABLE Progetti; -- cancellare tabella progetti
-- DROP TABLE Dipendenti; -- cancellare tabella dipendenti
-- DROP TABLE Assegnazioni; -- cancellare tabella assegnazioni
-- DROP TABLE Clienti; -- cancellare tabella clienti
-- DROP TABLE DettagliOrdine; -- cancella tabella DettagliOrdini
-- DROP TABLE Ordini; -- cancella tabella Ordini

/* SPIEGAZIONE FOREIGN KEY
Il comando FOREIGN KEY (Chiave Esterna) serve a collegare tra di loro le tabelle 
e mantenere il collegamento dei dati - (dipendenti) --> fa riferimento Dipendenti(DipendentiID)

Dipendenti.ProgettoID deve esistere nella tabella Progetti(ProgettoID)
non può assegnare un dipedente ad un progetto
*/

-- INSERIMENTO DATI --

INSERT INTO Reparti(Nome, Sede)
VALUES 
	('Communication', 'Milano'),
	('IT', 'Roma'),
	('Technologist','Florida'),
	('Human Resources', 'Roma'),
	('Vendite', 'Napoli'),
	('Engineering', 'Milano'),
	('Manager', 'Roma'),
	('Food Technologist','Napoli'),
	('CEO', 'Roma'),
	('Legal', 'Napoli'),
	('Accountant', 'Napoli'),
	('IT','Roma'),
    ('HR','Milano'),
    ('Vendite','Napoli'),
    ('Marketing','Torino'),
    ('Finanza','Bologna'),
    ('Logistica','Genova'),
    ('Supporto','Firenze'),
    ('Produzione','Bari'),
    ('Ricerca','Parma'),
    ('Qualità','Verona'),
    ('Sicurezza','Trieste'),
    ('Acquisti','Padova'),
    ('Legale','Modena'),
    ('Formazione','Perugia'),
    ('Controllo','Pisa'),
    ('Innovazione','Catania'),
    ('Sviluppo','Palermo'),
    ('Design','Venezia'),
    ('Testing','Lecce'),
    ('HelpDesk','Salerno'),
    ('Cloud','Aosta'),
    ('AI','Trento'),
    ('Data','Bolzano'),
    ('Networking','Ancona'),
    ('Mobile','Taranto'),
    ('Web','Rimini'),
    ('Backend','Ferrara'),
    ('Frontend','Siena'),
    ('Dev','Lucca'),
    ('QA','Udine'),
    ('IT','USA'),
    ('HR','Roma'),
    ('Finance','Milano'),
    ('Operation','Venezia'),
    ('Marketing','Bologna'),
    ('Sales','Torino'),
    ('Support','Napoli'),
    ('HQ','Oslo'),
    ('Research','Londra'),
    ('Customer','Bankok'),
    ('Produzione','Bari'),
    ('Management',''),
    ('Communication', 'Milano'),
	('IT', 'Roma'),
	('Technologist','Florida'),
	('Human Resources', 'Roma'),
	('Vendite', 'Napoli'),
	('Engineering', 'Milano'),
	('Manager', 'Roma'),
	('Food Technologist','Napoli'),
	('CEO', 'Roma'),
	('Legal', 'Napoli'),
	('Accountant', 'Napoli'),
	('IT','USA'),
	('HR','Roma'),
	('Finance','Milano'),
	('Operation','Venezia'),
	('Marketing','Bologna'),
	('Sales','Torino'),
	('Support','Napoli'),
	('HQ','Oslo'),
	('Research','Londra'),
	('Customer','Bankok'),
	('Produzione','Bari'),
	('Management','Genova');


INSERT INTO Progetti (Nome, Budget, Data_Inizio, Data_Fine) 
VALUES
	('Proj1',1000,'2024-01-01','2024-02-01'),
	('Proj2',2000,'2024-01-02','2024-02-02'),
	('Proj3',3000,'2024-01-03','2024-02-03'),
	('Proj4',4000,'2024-01-04','2024-02-04'),
	('Proj5',5000,'2024-01-05','2024-02-05'),
	('Proj6',6000,'2024-01-06','2024-02-06'),
	('Proj7',7000,'2024-01-07','2024-02-07'),
	('Proj8',8000,'2024-01-08','2024-02-08'),
	('Proj9',9000,'2024-01-09','2024-02-09'),
	('Proj10',10000,'2024-01-10','2024-02-10'),
	('Proj11',11000,'2024-01-11','2024-02-11'),
	('Proj12',12000,'2024-01-12','2024-02-12'),
	('Proj13',13000,'2024-01-13','2024-02-13'),
	('Proj14',14000,'2024-01-14','2024-02-14'),
	('Proj15',15000,'2024-01-15','2024-02-15'),
	('Proj16',16000,'2024-01-16','2024-02-16'),
	('Proj17',17000,'2024-01-17','2024-02-17'),
	('Proj18',18000,'2024-01-18','2024-02-18'),
	('Proj19',19000,'2024-01-19','2024-02-19'),
	('Proj20',20000,'2024-01-20','2024-02-20'),
	('Proj21',21000,'2024-01-21','2024-02-21'),
	('Proj22',22000,'2024-01-22','2024-02-22'),
	('Proj23',23000,'2024-01-23','2024-02-23'),
	('Proj24',24000,'2024-01-24','2024-02-24'),
	('Proj25',25000,'2024-01-25','2024-02-25'),
	('Proj26',26000,'2024-01-26','2024-02-26'),
	('Proj27',27000,'2024-01-27','2024-02-27'),
	('Proj28',28000,'2024-01-28','2024-02-28'),
	('Proj29',29000,'2024-01-29','2024-03-01'),
	('Proj30',30000,'2024-01-30','2024-03-02');


INSERT INTO Dipendenti (Nome, Cognome, Email, Stipendio, RepartoID, Data_Assunzione)
VALUES  
	('Mario','Rossi','m1@mail.com',2500,1,'2022-01-01'),
	('Luigi','Verdi','m2@mail.com',2300,2,'2022-01-02'),
	('Anna','Bianchi','m3@mail.com',2700,3,'2022-01-03'),
	('Paolo','Neri','m4@mail.com',2100,4,'2022-01-04'),
	('Sara','Gialli','m5@mail.com',3000,5,'2022-01-05'),
	('Luca','Blu','m6@mail.com',2400,6,'2022-01-06'),
	('Elena','Rosa','m7@mail.com',2600,7,'2022-01-07'),
	('Marco','Viola','m8@mail.com',2800,8,'2022-01-08'),
	('Giulia','Grigi','m9@mail.com',2300,9,'2022-01-09'),
	('Davide','Marrone','m10@mail.com',2900,10,'2022-01-10'),
	('Alessio','Nero','m11@mail.com',2500,11,'2022-01-11'),
	('Franco','Bianco','m12@mail.com',2600,12,'2022-01-12'),
	('Chiara','Blu','m13@mail.com',2700,13,'2022-01-13'),
	('Andrea','Rossi','m14@mail.com',2200,14,'2022-01-14'),
	('Simone','Verdi','m15@mail.com',2100,15,'2022-01-15'),
	('Irene','Bianchi','m16@mail.com',2800,16,'2022-01-16'),
	('Fabio','Neri','m17@mail.com',3000,17,'2022-01-17'),
	('Laura','Gialli','m18@mail.com',2400,18,'2022-01-18'),
	('Matteo','Blu','m19@mail.com',2500,19,'2022-01-19'),
	('Stefano','Rosa','m20@mail.com',2600,20,'2022-01-20'),
	('Valentina','Viola','m21@mail.com',2700,21,'2022-01-21'),
	('Giorgio','Grigi','m22@mail.com',2800,22,'2022-01-22'),
	('Silvia','Marrone','m23@mail.com',2900,23,'2022-01-23'),
	('Davide','Nero','m24@mail.com',2200,24,'2022-01-24'),
	('Alberto','Bianco','m25@mail.com',2300,25,'2022-01-25'),
	('Martina','Blu','m26@mail.com',2400,26,'2022-01-26'),
	('Riccardo','Rossi','m27@mail.com',2500,27,'2022-01-27'),
	('Francesca','Verdi','m28@mail.com',2600,28,'2022-01-28'),
	('Claudio','Bianchi','m29@mail.com',2700,29,'2022-01-29'),
	('Beatrice','Neri','m30@mail.com',2800,30,'2022-01-30');

INSERT INTO Assegnazioni(DipendenteID, ProgettoID, Ruolo) VALUES
	(1,1,'Dev'),
	(2,2,'Tester'),
	(3,3,'PM'),
	(4,4,'Dev'),
	(5,5,'Marketing'),
	(6,6,'Analista'),
	(7,7,'Dev'),
	(8,8,'Dev'),
	(9,9,'HR'),
	(10,10,'Manager'),
	(11,11,'Dev'),
	(12,12,'Tester'),
	(13,13,'PM'),
	(14,14,'Dev'),
	(15,15,'Marketing'),
	(16,16,'Analista'),
	(17,17,'Dev'),
	(18,18,'Dev'),
	(19,19,'HR'),
	(20,20,'Manager'),
	(21,21,'Dev'),
	(22,22,'Tester'),
	(23,23,'PM'),
	(24,24,'Dev'),
	(25,25,'Marketing'),
	(26,26,'Analista'),
	(27,27,'Dev'),
	(28,28,'Dev'),
	(29,29,'HR'),
	(30,30,'Manager');


SET IDENTITY_INSERT Clienti ON; -- sto attivando il comando di forzatura per l'inserimento dei PRIMARY KEY
INSERT INTO Clienti(ClienteID, Nome, Email, Telefono, Codice_Fiscale)
VALUES
	('1', 'Massimo', 'massimoliberti@huyt.com', '+393455789060', 'RSSMRA80A01H501U'),
	('2', 'Giuditta', 'giuditta@huyt.com', '+393342156765', 'BNCNNA92L45F205W'),
	('3', 'Libero', 'libero@huyt.com', '+393657832900', 'VRDLGU75M12L219Z'),
	('4', 'Vittoria', 'vittoria@huyt.com', '+393387654231', 'GLLSRA88P50H501X'),
	('5', 'Maria', 'maria@huyt.com', '+393324565768', 'NRIPLA82T20F205Q'),
	('6','Marco', 'marco@huyt.com', '+393446789432', 'BLULCU95E05L219S')
;
SET IDENTITY_INSERT Clienti OFF; -- sto disattivando il comando di forzatura per l'inserimento dei PRIMARY KEY


INSERT INTO Ordini (ClienteID, Data_Ordine, Totale)
VALUES
    (1, '2025-03-12', 6789.98),
    (2, '2026-01-20', 3456.76),
    (1, '2025-08-15', 456.98),
    (3, '2026-03-10', 7654.98),
    (2, '2025-11-22', 123456.98),
    (3, '2026-04-01', 5643.98),
    (4, '2025-07-14', 76543.98),
    (4, '2026-02-28', 12321.98),
    (4, '2025-09-05', 222.98),
    (2, '2026-01-11', 34565.98),
    (2, '2025-10-30', 23432.98),
    (6, '2026-04-15', 7654.98),
    (6, '2025-12-25', 87654.98),
    (6, '2026-03-22', 9009324.98),
    (6, '2025-06-18', 43254.98),
    (5, '2026-01-05', 654567.98),
    (5, '2025-04-29', 322113.98),
    (5, '2026-02-12', 65434.98),
    (4, '2025-11-03', 6547.98),
    (4, '2026-03-30', 8778.98)
;

-- VISUALIZZARE DATI DATABASE

SELECT * FROM Reparti; -- READY

SELECT * FROM Progetti; -- READY

SELECT * FROM Assegnazioni; -- READY
	
SELECT * FROM Dipendenti; -- READY

SELECT * FROM Clienti; -- READY

SELECT * FROM Ordini; -- READY

SELECT * FROM DettagliOrdine;

-----------------------------------------------------------------------------------------------------------
