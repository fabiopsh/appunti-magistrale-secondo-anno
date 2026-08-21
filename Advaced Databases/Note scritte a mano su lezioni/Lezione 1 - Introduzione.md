Ha spiegato cosa è un buffer su disco e memoria, parlando di come le pagine vengono prese e messe nel buffer, di come questo velocizza tutto quanto quando la pagina è già presente in memoria.
Il concetto di Pin e Unpin, in maniera veloce.

Quando però la memoria è piena, bisogna fare il flush di alcune pagine per poter liberare la memoria, liberare il buffer e caricare la pagina dove è stata tolta la precedente.
Per fare questo c'è bisogno di una policy per eliminare quella precedente.

Leggere è più comune di scrivere, quindi anche più veloce.

Ha spiegato il setDirty, ovvero indica che probabilmente la pagina è stata modificata, quando è dirty il buffer manager non può fare evitcion, deve prima fare il flush, trasferendo dal buffer alla memoria.
Quindi per fare evitc non deve esserci un dirty bit a 1.

Quindi la tecnica di buffering serve per caricare i dati prima, dato che sono nella main memory non bisogna richiederli al disco e quindi velocizzare le operazioni.

Una policy potrebbe essere la Eager policy, oppure lazy (caricare sul disco solo quando tutte le pagine sono dirty).
Potrebbero essercene con il timestamp, che dopo un certo numero di minuti o secondi o millisecondi la pagina viene scritta e tolta dal buffer.

Il buffer manager decide la policy, il sistema deve essere ortogonale alla decisione del buffer manager.

Least Recently Used o LRU è una delle policy più usate, sostanzialmente togli quella con il timestamp più vecchio ovvero quella non usata per il maggior periodo di tempo.

Oppure c'è la MRU, ovvero Most Recently Used.

Poi ha parlato di Merge sort e di z-way Merge Sort con tante "runs".

