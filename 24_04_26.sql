USE Aziendadb;

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini

----------------------------------------------------------- COUNT -----------------------------------------------------------
SELECT * FROM Clienti;

ALTER TABLE Clienti ALTER COLUMN Eta NVARCHAR(100) NULL;
ALTER TABLE Clienti ALTER COLUMN Codice_Fiscale NVARCHAR(100) NULL;

INSERT INTO Clienti (Nome, Email, Telefono) VALUES
('Cliente1','c1@mail.com','3330000001'),
('Cliente2','c2@mail.com','3330000002'),
('Cliente3','c3@mail.com','3330000003'),
('Cliente4','c4@mail.com','3330000004'),
('Cliente5','c5@mail.com','3330000005'),
('Cliente6','c6@mail.com','3330000006'),
('Cliente7','c7@mail.com','3330000007'),
('Cliente8','c8@mail.com','3330000008'),
('Cliente9','c9@mail.com','3330000009'),
('Cliente10','c10@mail.com','3330000010'),
('Cliente11','c11@mail.com','3330000011'),
('Cliente12','c12@mail.com','3330000012'),
('Cliente13','c13@mail.com','3330000013'),
('Cliente14','c14@mail.com','3330000014'),
('Cliente15','c15@mail.com','3330000015'),
('Cliente16','c16@mail.com','3330000016'),
('Cliente17','c17@mail.com','3330000017'),
('Cliente18','c18@mail.com','3330000018'),
('Cliente19','c19@mail.com','3330000019'),
('Cliente20','c20@mail.com','3330000020'),
('Cliente21','c21@mail.com','3330000021'),
('Cliente22','c22@mail.com','3330000022'),
('Cliente23','c23@mail.com','3330000023'),
('Cliente24','c24@mail.com','3330000024'),
('Cliente25','c25@mail.com','3330000025'),
('Cliente26','c26@mail.com','3330000026'),
('Cliente27','c27@mail.com','3330000027'),
('Cliente28','c28@mail.com','3330000028'),
('Cliente29','c29@mail.com','3330000029'),
('Cliente30','c30@mail.com','3330000030');

SELECT
    COUNT(*) AS 'Totale Righe'
FROM Clienti;

SELECT
    COUNT(ClienteID) AS 'Numero Totale Clienti'
FROM Clienti;

INSERT INTO Ordini(ClienteID, Data_Ordine, Totale) VALUES
(1,'2025-01-01',500),
(2,'2025-01-02',700),
(3,'2025-01-03',300),
(4,'2025-01-04',900),
(5,'2025-01-05',1200),
(6,'2025-01-06',450),
(7,'2025-01-07',800),
(8,'2025-01-08',600),
(9,'2025-01-09',1000),
(10,'2025-01-10',1500),
(11,'2025-01-11',200),
(12,'2025-01-12',750),
(13,'2025-01-13',1100),
(14,'2025-01-14',950),
(15,'2025-01-15',400),
(16,'2025-01-16',1300),
(17,'2025-01-17',700),
(18,'2025-01-18',600),
(19,'2025-01-19',850),
(20,'2025-01-20',300),
(21,'2025-01-21',1400),
(22,'2025-01-22',500),
(23,'2025-01-23',650),
(24,'2025-01-24',900),
(25,'2025-01-25',1200),
(26,'2025-01-26',400),
(27,'2025-01-27',1000),
(28,'2025-01-28',700),
(29,'2025-01-29',800),
(30,'2025-01-30',1500),
(31,'2025-01-23',650),
(32,'2025-01-24',900),
(33,'2025-01-25',1200),
(34,'2025-01-26',400),
(35,'2025-01-27',1000),
(36,'2025-01-28',700),
(37,'2025-01-29',800),
(38,'2025-01-29',800);

INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantita, Prezzo_Unitario) VALUES
-- Ordine 1
(17,'Laptop',1,500),
(17,'Mouse',2,20),

-- Ordine 2
(18,'Monitor',1,300),
(18,'Tastiera',1,50),

-- Ordine 3
(19,'PC',1,700),
(19,'Mouse',1,25),

-- Ordine 4
(20,'Stampante',1,200),
(20,'Carta',5,10),

-- Ordine 5
(21,'Server',1,1200),
(21,'RAM',2,100),

-- Ordine 6
(22,'Tablet',1,450),
(22,'Custodia',1,30),

-- Ordine 7
(23,'Laptop',1,800),
(23,'SSD',1,120),

-- Ordine 8
(24,'Monitor',2,200),
(24,'Cavo HDMI',2,15),

-- Ordine 9
(25,'PC',1,1000),
(25,'Mouse',1,30),

-- Ordine 10
(26,'Server',1,1500),
(26,'Switch',1,200);

ALTER TABLE Ordini
ADD DettaglioID INT;

--------------------------------------------------- FUNZIONI MATEMATICHE ----------------------------------------------------

-- COUNT il numero totale degli ordini
SELECT 
    SUM(Totale) AS 'Somma degli ordini'
FROM Ordini;

-- COUNT il numero totale degli ordini
SELECT 
    COUNT(*) AS 'Totale degli ordini'
FROM Ordini;

-- AVG per la media ordini
SELECT 
    AVG(Totale) AS 'La media degli ordini'
FROM Ordini;

-- MAX il numero massimo degli ordini
SELECT 
    MAX(Totale) AS 'Ordine massimo'
FROM Ordini;

-- MIN per il numero minimo di ordini
SELECT 
    MIN(Totale) AS 'Ordine minimo'
FROM Ordini;

-- COUNT, AVG, MIN, MAX, SUM 
SELECT 
    COUNT(*) AS 'Totale degli ordini',
    AVG(Totale) AS 'La media degli ordini',
    MIN(Totale) AS 'Ordine minimo',
    MAX(Totale) AS 'Ordine massimo',
    SUM(Totale) AS 'Somma degli ordini'
FROM Ordini;