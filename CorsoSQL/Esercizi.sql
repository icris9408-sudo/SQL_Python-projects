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
-- =========================
CREATE TABLE Progetti (
    ProgettoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Budget DECIMAL(10,2),
    DataInizio DATE,
    DataFine DATE
);


-- Insert Progetti
INSERT INTO Progetti (Nome, Budget, DataInizio, DataFine) VALUES
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

SELECT * FROM Progetti ;

-- =========================
-- TABELLA ASSEGNAZIONI
-- =========================
CREATE TABLE Assegnazioni (
    DipendenteID INT,
    ProgettoID INT,
    Ruolo NVARCHAR(50),
    PRIMARY KEY (DipendenteID, ProgettoID),
    FOREIGN KEY (DipendenteID) REFERENCES Dipendenti(DipendenteID),
    FOREIGN KEY (ProgettoID) REFERENCES Progetti(ProgettoID)
);

-- Insert Assegnazioni
INSERT INTO Assegnazioni VALUES
(1,1,'Dev'),(2,2,'Tester'),(3,3,'PM'),(4,4,'Dev'),(5,5,'Marketing'),
(6,6,'Analista'),(7,7,'Dev'),(8,8,'Dev'),(9,9,'HR'),(10,10,'Manager'),
(11,11,'Dev'),(12,12,'Tester'),(13,13,'PM'),(14,14,'Dev'),(15,15,'Marketing'),
(16,16,'Analista'),(17,17,'Dev'),(18,18,'Dev'),(19,19,'HR'),(20,20,'Manager'),
(21,21,'Dev'),(22,22,'Tester'),(23,23,'PM'),(24,24,'Dev'),(25,25,'Marketing'),
(26,26,'Analista'),(27,27,'Dev'),(28,28,'Dev'),(29,29,'HR'),(30,30,'Manager');

select * from Assegnazioni;
select * from Reparti;
select * from Progetti;
select * from Dipendenti;

-- =========================
-- TABELLA CLIENTI
-- =========================
CREATE TABLE Clienti (
    ClienteID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Telefono NVARCHAR(20) NOT NULL
);

-- =========================
-- TABELLA ORDINI
-- =========================
CREATE TABLE Ordini (
    OrdineID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    ClienteID INT,
    DataOrdine DATE,
    Totale DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clienti(ClienteID)
);


-- Insert Ordini
INSERT INTO Ordini (ClienteID, DataOrdine, Totale) VALUES
    (1,'2025-01-01',1500),
    (1,'2025-01-10',2000),
    (2,'2025-02-01',500),
    (3,'2025-02-10',1200),
    (4,'2025-03-01',800),
    (5,'2025-03-10',3000);

SELECT * FROM Ordini;


-- Insert Clienti
INSERT INTO Clienti (Nome, Email, Telefono) VALUES
    ('Acme SRL','acme@mail.com','3331111111'),
    ('Beta Spa','beta@mail.com','3332222222'),
    ('Gamma Srl','gamma@mail.com','3333333333'),
    ('Delta Srl','delta@mail.com','3334444444'),
    ('Omega Spa','omega@mail.com','3335555555');
SELECT * FROM Clienti;

-- =========================
-- TABELLA DETTAGLI ORDINE
-- =========================
CREATE TABLE DettagliOrdine (
    DettaglioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    OrdineID INT,
    Prodotto NVARCHAR(100),
    Quantita INT,
    PrezzoUnitario DECIMAL(10,2),
    FOREIGN KEY (OrdineID) REFERENCES Ordini(OrdineID)
);

-- Insert DettagliOrdine
INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantita, PrezzoUnitario) VALUES
    --(1,'Laptop',1,1500),
    (2,'Server',1,2000),
    (3,'Mouse',5,100),
    (3,'Tastiera',1,100),
    (4,'Monitor',2,600),
    (5,'Stampante',1,800),
    (6,'PC Gaming',1,3000);

SELECT * FROM DettagliOrdine;

select * from Clienti;

ALTER TABLE Clienti 
ALTER COLUMN Email NVARCHAR (20) NOT NULL
-- => Tipo ( NVARCHAR (20) NOT NULL);


-- MODIFICA IMPORTANTE PER LUNEDI
/*
('', 'Bari')
('Management', '')*/
ALTER TABLE Reparti
ADD CONSTRAINT CK_Reparti_Nome CHECK (Nome <> '');

-- Aggiunge vincolo per evitare dipendenti senza reparto
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


-- Rinomina “Reparti” → “Dipartimenti”
EXEC sp_rename 'Reparti', 'Dipartimenti';

--RINOMINARE COLONNE
-- Nome → NomeReparto
-- Dipendenti per reparto
EXEC sp_rename 'Dipartimenti.Nome', 'NomeReparto', 'COLUMN';

-- Sede → SedeReparto
EXEC sp_rename 'Dipartimenti.Sede', 'SedeReparto', 'COLUMN';

/*
    MODIFICARE TIPO DI DATO (ALTER COLUMN)
    Rendere Nome NOT NULL (già lo è, ma esempio valido)
*/
ALTER TABLE Dipendenti
ALTER COLUMN Nome NVARCHAR(80) NOT NULL;


-- Aumentare dimensione Email
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150);

-- Rendere stipendio NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN Stipendio DECIMAL(10,2) NOT NULL;


-- Rendere RepartoID NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


-- GGIUNGERE COLONNE NUOVE
-- Aggiungere colonna “Telefono” ai dipendenti
ALTER TABLE Dipendenti
ADD Telefono NVARCHAR(20);

-- Aggiungere colonna “Attivo”
ALTER TABLE Dipendenti
ADD Attivo BIT DEFAULT 1;

-- ELIMINARE COLONNE
-- Rimuovere Telefono
ALTER TABLE Dipendenti
DROP COLUMN Telefono;

-- MODIFICARE DATI (UPDATE)
-- Aggiornare stipendio di un dipendente
UPDATE Dipendenti
SET Stipendio = 3200
WHERE DipendenteID = 1;

-- Aumentare stipendio del 10%
UPDATE Dipendenti
SET Stipendio = Stipendio * 1.10;

-- Cambiare reparto
UPDATE Dipendenti
SET RepartoID = 2
WHERE DipendenteID = 3;

-- Aggiornare email
UPDATE Dipendenti
SET Email = 'nuova@email.com'
WHERE DipendenteID = 5;

/*
UPDATE Nome_Tabella
SET Nome_Colonna = Nuovo_Valore
WHERE Condizione;
*/

-- UPDATE CON CONDIZIONI (IMPORTANTISSIMO)
-- Aumenta stipendio solo a chi guadagna meno di 2500
UPDATE Dipendenti
SET Salario = Salario + 200
WHERE Salario < 2500;

Select * from Dipendenti;

-- Aggiorna tutti i dipendenti del reparto IT
UPDATE Dipendenti
SET Stipendio = Stipendio + 500
WHERE RepartoID = 1;

-- NULL vs NOT NULL (CONCETTO DA ESAME)
-- Permettere NULL (esempio su Email)
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150) NULL;

-- Imporre NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150) NOT NULL;

--------------------------------Join-------------------------------
SELECT 
    D.Nome, 
    D.Cognome, 
    R.Nome AS Reparto
FROM Dipendenti D
JOIN Reparti R ON D.RepartoID = R.RepartoID;


-- Progetti assegnati ai dipendenti
SELECT D.Nome, D.Cognome, P.Nome AS Progetto, A.Ruolo
FROM Assegnazioni A
JOIN Dipendenti D ON A.DipendenteID = D.DipendenteID
JOIN Progetti P ON A.ProgettoID = P.ProgettoID;

-- Numero dipendenti per reparto
SELECT R.Nome, COUNT(D.DipendenteID) AS TotDipendenti
FROM Reparti R
LEFT JOIN Dipendenti D ON R.RepartoID = D.RepartoID
GROUP BY R.Nome;

--Budget totale progetti
SELECT SUM(Budget) AS BudgetTotale
FROM Progetti;

-- Clienti con ordini
SELECT C.Nome, O.OrdineID, O.Totale
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID;

-- Fatturato totale per cliente
SELECT C.Nome, SUM(O.Totale) AS Fatturato
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID
GROUP BY C.Nome;

-- Prodotti venduti (quantità totale)
SELECT Prodotto, SUM(Quantita) AS TotaleVenduto
FROM DettagliOrdine
GROUP BY Prodotto;