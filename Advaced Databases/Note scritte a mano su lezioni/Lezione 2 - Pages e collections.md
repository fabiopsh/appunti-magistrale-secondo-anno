Per ogni operazione che facciamo su un file, quindi inserimento, ricerca etc. vedremo quanto costa questa operazione in base a come sono organizzate le cose.

Un record è sicuramente più corto di una page:

![[Pasted image 20260816153405.png|394]]

Un record si descrive da solo e quando aggiorniamo un valore in un campo di un record, la grandezza del record cambia.

Ogni record in una pagina è identificato dalla coppia Page ID "PID" e posizione nella pagina, ed il record id è RID.

Se un record viene modificato, il suo RID non deve cambiare, perchè altrimenti avresti problemi con il puntatore.

![[Pasted image 20260816153731.png]]

Il RID è tipicamente di 4 bytes o 8 bytes.

# Pages e la loro organizzazione in una collezione

Non puoi dare una quantità di spazio prefissata, potresti sprecare spazio oppure non averne quando la grandezza delle pagine cresce.

I due approcci sono con una linked list of pages:

![[Pasted image 20260816153940.png]]
In questo caso possiamo aggiungere pagine dove ci pare, inizio fine o in mezzo.

E l'altra con una directory:

![[Pasted image 20260816154042.png]]

I file sono dinamici, crescono.
Le pagine di un file possono essere consecutive nel disco ma non sempre è così, possono anche non essere consecutivi.

### Heap organizations
Significa che i record vengono messi uno dopo l'altro nell'ordine in cui arrivano, quindi il nuovo record sta sempre alla fine del file.

Per ottimizzare il table scan che è una operazione comune, è bene avere meno roba inutile possibile da caricare in memoria nei file.

Il journal è un file pieno di insert che viene letto quasi mai, tipo per controllare se ci sono stati errori, tipo un log.

Se devo inserire 100 record aspetto di aver riempito la pagina in memoria, in modo che la scrittura sul disco sia solamente una per migliorare l'efficienza.

Questa organizzazione è pessima per la ricerca, in particolare equality search oppure range search.
Si parla anche di Massive, che indica che stai cercando oltre il 30% dei record.

### Sequential Organizations
Quando vengono aggiunti i record, inserirli ordinati da subito, questo crea dei vantaggi in fase di ricerca.

Bisogna scegliere un attributo chiave "k" e ordinare per quel valore.

I due approcci per la ricerca sono Binary Search e Interpolation Search.

Possiamo dire che è molto buona nelle small range search, a differenza di una hash organization.

Il grande problema è sia l'inserimento che la cancellazione, dato che dovresti rileggere e riscrivere tutto quello che viene dopo la metà se stai inserendo o togliendo dal mezzo.

Per farlo esiste una soluzione dinamica, che consiste di riempire ogni pagina al 70% della loro capacità, in modo che ogni volta che devi fare una insertion puoi inserire nello spazio libero della pagina.
Bisogna fare page splitting e page balancing per tenere sempre corretta la percentuale di riempimento di una pagina.

Questo approccio dinamico non è molto usato perchè si spreca tanto spazio.

Poi c'è una soluzione static, con il differential file, ed è definita statica perchè una volta ogni tanto bisogna fare una operazione molto costosa che potrebbe mandare in stallo il sistema perchè deve riorganizzare tutto, a differenza di quello dinamico che fa la riorganizzazione localmente e non globalmente.

Differenze in termini di costo tra Heap e sequential:
![[Pasted image 20260816162424.png]]

