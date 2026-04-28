-- ELENCO DELLE STORE PROCEDURES CREATE

-- Questa stored procedure recupera e mostra tutti i dati di tutti gli studenti presenti nella tabella Studenti.
EXEC sp_GetAllStudenti; 

-- Questa procedura verifica le date di nascita: se ne manca almeno una mostra la lista degli studenti con il relativo stato, altrimenti stampa un messaggio di ok.
EXEC sp_GestioneStudenti; 

-- Questa procedura cerca uno studente in base al Nome, unisce nome e cognome in un'unica colonna e formatta i dati sostituendo gli eventuali valori vuoti (NULL) con diciture standard (es. N/D, CF-NULL).
EXEC sp_GetStudenteByName 'INSERIRE NOME';