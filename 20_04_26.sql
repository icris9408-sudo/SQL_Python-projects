DROP DATABASE AziendaDb;

-- Creazione Database
CREATE DATABASE AziendaDb;

USE AziendaDb;

-- =========================
-- TABELLA REPARTI
-- =========================
CREATE TABLE Reparti (
    RepartoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Sede NVARCHAR(100) NULL
);

SELECT * FROM Reparti;

INSERT INTO Reparti 
    (Nome, Sede) 
VALUES
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
    ('DevOps','Lucca'),
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
    ('','Bari'),
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
	('Accountant', 'Napoli');
    
select * from Reparti;


-- =========================
-- TABELLA DIPENDENTI
-- =========================
CREATE TABLE Dipendenti (
    DipendenteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Stipendio DECIMAL(10,2),
    RepartoID INT,
    DataAssunzione DATE,
    FOREIGN KEY (RepartoID) REFERENCES Reparti(RepartoID)
);

-- Insert Dipendenti
INSERT INTO Dipendenti (Nome, Cognome, Email, Stipendio, RepartoID, DataAssunzione) VALUES
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

SELECT * FROM Dipendenti;
-- =========================
-- TABELLA PROGETTI
--


--------------		ESERCIZIO       ----------------

/* Aggiungi colonna Provincia alla tabella Clienti. DONE
   Aggiungi colonna Bonus ai Dipendenti con valore default 1000. DONE
   Rendi la colonna Email NOT NULL nella tabella Clienti. DONE
   Modifica la colonna Nome in NVARCHAR(200). DONE
   Elimina la colonna CAP dalla tabella Clienti. DONE
   Aggiungi colonna Eta e poi rendila NOT NULL in modo corretto. DONE*/

USE Aziendadb;

-- ALTER TABLE object ADD objects; per aggiungere colonna Provincia alla tabella Clienti
ALTER TABLE Clienti ADD Provincia NVARCHAR(150) NULL;
ALTER TABLE Clienti ADD CAP NVARCHAR(5) NULL;

-- Aggiungi colonna Bonus ai Dipendenti con valore default 1000.
ALTER TABLE Dipendenti ADD Bonus NVARCHAR(150) DEFAULT(1000) NOT NULL;

-- Rendi la colonna Email NOT NULL nella tabella Clienti.
ALTER TABLE Clienti ALTER COLUMN Email NVARCHAR(100) NOT NULL;

-- Modifica la colonna Nome in NVARCHAR(200).
ALTER TABLE Clienti ALTER COLUMN Nome NVARCHAR(200) NOT NULL;

-- Elimina la colonna CAP dalla tabella Clienti.
ALTER TABLE Clienti DROP COLUMN CAP;

-- Aggiungi colonna Eta e poi rendila NOT NULL in modo corretto.*/
ALTER TABLE Clienti ADD Eta NVARCHAR(3) NULL;
UPDATE Clienti SET Eta = '' WHERE Eta IS NULL;
ALTER TABLE Clienti ALTER COLUMN Eta NVARCHAR(3) NOT NULL;

SELECT * FROM Clienti;

