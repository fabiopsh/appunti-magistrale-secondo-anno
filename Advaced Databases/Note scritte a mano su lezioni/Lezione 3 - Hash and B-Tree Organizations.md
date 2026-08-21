# Lezione 3 - Organizzazione dei Dati: Hash e B-Tree

## Introduzione
La lezione tratta le varie organizzazioni fisiche dei dati all'interno di un file (ovvero come vengono immagazzinati i record). 
Nella lezione precedente sono state viste le organizzazioni:
- **Heap:** I record vengono salvati uno dopo l'altro.
- **Sequenziale:** I record sono ordinati in base a uno specifico attributo.

> [!note] Organizzazione Primaria e Secondaria
> Un'organizzazione è definita **primaria** quando determina fisicamente dove inserire il prossimo record nel file. Ogni tabella ha esattamente un'organizzazione primaria (che può essere Heap, Sequenziale, Hash, o un Tree). È su di essa che i dati sono ordinati fisicamente.
> Si possono poi aggiungere organizzazioni **secondarie** (o *indici*, solitamente implementati come B-Trees), che verranno analizzati successivamente. Un'organizzazione basata su un attributo (es. il cognome) ottimizza le ricerche su tale attributo, ma per le ricerche su attributi diversi l'organizzazione non aiuta e si è costretti a fare una ricerca sequenziale (table scan).

Le organizzazioni **Hash** e i **B-Tree** offrono prestazioni di ricerca persino migliori dell'organizzazione sequenziale.

Esiste inoltre un'importante distinzione fra:
- **Organizzazioni Statiche:** Richiedono periodiche riorganizzazioni dell'intero sistema dopo un elevato numero di inserimenti o cancellazioni (es. file sequenziale statico, hash statico).
- **Organizzazioni Dinamiche:** La struttura si evolve e si adatta localmente per ogni singola operazione (inserimento/cancellazione), senza mai richiedere la ricostruzione dell'intero file (es. Hash dinamico, B-Tree).

---

## 1. Hash Statico (Static Hash)
Quando si parla semplicemente di "Hash", generalmente ci si riferisce all'Hash Statico, un metodo molto comune e ampiamente utilizzato (a differenza dell'Hash Dinamico che è considerato troppo complicato e meno usato). È ottimo se si ha un file statico e si necessita di un accesso rapidissimo per *ricerche di uguaglianza* (equality search).

### Funzionamento Base
- Si hanno $N_{rec}$ record da memorizzare, idealmente tutti con dimensioni simili.
- I record vengono inseriti in un set di **pagine** su disco.
- Viene decisa a priori la **capacità per pagina** ($C$) e il numero totale di pagine ($M$).
- Idealmente, $M \times C$ deve essere maggiore di $N_{rec}$ in modo da avere un po' di spazio libero in ogni pagina.

### Densità (Loading Factor)
La densità è il rapporto tra il numero di record effettivi ($N_{rec}$) e la capacità totale del file ($M \times C$).
- Se la densità è troppo bassa (es. 50%), si spreca spazio prezioso (che comporta letture inutili dal disco in un table scan).
- Se la densità è fissata troppo alta (es. 90%, 99% o 100%), si generano inevitabilmente problemi di **Overflow**.

### Gestione dell'Overflow
L'overflow avviene quando si cerca di inserire un record in una pagina che è già piena. A differenza dell'hashing in memoria principale (in cui i bucket contengono un solo record e una collisione genera subito overflow), in un Database ogni pagina ha spazio per molti record (es. 100 record). 
Se una pagina ha spazio per 100 record e la densità media è del 90%, i primi 90 inserimenti sono gratuiti. L'overflow diventa quindi un evento più raro.

> [!important] Granularità e Probabilità di Overflow
> Più la pagina è capiente, minore è la probabilità di overflow. A parità di densità (es. 90%):
> - Se una pagina contiene solo 5 record, la probabilità di overflow è altissima (circa 20% delle pagine andrà in overflow).
> - Se la capacità viene aumentata a 30 record per pagina, la probabilità crolla a circa il 3% o 5%. 
> Se si volesse limitare l'overflow mantenendo i bucket molto piccoli (come in RAM), bisognerebbe raddoppiare la grandezza del file (portando la densità al 50%). Su disco, avendo bucket capienti, si possono invece raggiungere densità molto elevate mantenendo basso l'overflow.

In questo corso l'overflow viene gestito allocando un'intera **nuova pagina di overflow** dedicata esclusivamente alla pagina che si è riempita. 
- In questo modo, su 10 letture (se c'è il 10% di overflow), 9 costeranno 1 I/O e solo 1 costerà 2 I/O. Non capita (quasi) mai che una pagina abbia 2 o 3 pagine di overflow. Il costo medio di lettura in un Hash Statico sarà quindi circa **1.1 accessi**. In casi fortunati, la ricerca su equality search trova la pagina in 1 I/O.

### Funzione di Hashing
La funzione di hashing (general-purpose) prende la chiave e restituisce una stringa di bit casuale lunghissima, alla quale si applica poi un *modulo M* per distribuire i record uniformemente tra le $M$ pagine da $0$ a $M-1$.
- **Caratteristiche essenziali:** La funzione non deve estrarre bit solo dall'inizio o dalla fine della chiave, ma prenderli da diverse parti della chiave e combinarli. Questo per evitare "regolarità eccessiva" (es. se i numeri di matricola finiscono tutti con `0`, usare l'ultima parte rovinerebbe la distribuzione).
- Non deve avere preferenze per i numeri pari o dispari (altrimenti applicando un modulo pari $M$, si userebbe solo metà dello spazio disponibile, ovvero solo le pagine pari).

### Svantaggi dell'Hash Statico
1. **Pessimo per l'Interval Search:** L'hashing frantuma l'ordinamento naturale dei record. Se si cerca un intervallo continuo (es. temperature tra 100.0 e 101.0), ci sono infiniti numeri nel mezzo, ed è impossibile calcolare l'hash di tutti i possibili valori nell'intervallo. L'unica soluzione è un costoso **Table Scan** dell'intero file, il che è inefficiente visto che il file contiene al suo interno un 10-20% di "garbage" (spazio vuoto causato dalla densità che non è del 100%).
2. **Natura Statica:** In un file in cui si inseriscono di continuo nuovi record (file dinamico), la densità prima o poi crescerà fino a superare il 100%, 150%, 200%. A quel punto la struttura collassa (ci saranno tantissimi overflow, quindi accessi doppi/tripli al disco) ed è necessaria una **riorganizzazione totale**.

---

## 2. Riorganizzazione del File Hash e Streaming
Quando il file Hash Statico supera la soglia tollerabile di densità, bisogna fermare il sistema e riorganizzarlo: scegliere un nuovo modulo $M$ più grande (quindi un nuovo numero di pagine destinate ad accogliere i record dilatati nel nuovo spazio) e trasferirvi i dati.

### Metodo Naïve (Estremamente Inefficiente)
Il metodo ingenuo consiste nel fare un table scan del vecchio file, calcolare il nuovo hash per ogni record in RAM e scrivere tale record nella pagina del nuovo file.
- **Problema:** Questo causerebbe scritture disordinate sul disco. Avendo un buffer in memoria molto ridotto, per scrivere 100 record non sequenziali che finiscono tutti nella pagina 2 del nuovo file (ma letti dal file originale a grande distanza di tempo), la pagina 2 andrebbe letta e caricata dal disco in memoria 100 volte, per poi dover subire il flash sul disco ogni volta. Il costo diverrebbe esorbitante e **lineare rispetto al numero di record** ($N_{records}$) anziché al numero di pagine.

### Il "Trucco" dei Database: Sorting e Streaming
Un DBMS deve cercare di pagare costi proporzionati al *numero di pagine* e non al *numero di record*. Per farlo, l'algoritmo ottimizzato è strutturato in tre fasi:
1. **Scansione e Hashing (Read):** Lettura sequenziale (table scan) del vecchio file (molto veloce). Per ogni record viene generata e concatenata l'informazione sul nuovo indirizzo hash di destinazione. 
2. **Sorting (Ordinamento):** Invece di scrivere nel nuovo database, si crea un enorme file temporaneo ordinato sulla base del *nuovo indirizzo hash*. I database sono estremamente rapidi nel fare operazioni di sort esterne.
3. **Scrittura Pipelined (Write):** Ora i record sono vicini: tutti quelli diretti alla pagina 1 sono consecutivi, poi tutti quelli per la pagina 2 e così via. Li si legge in blocco, si riempie la nuova pagina in buffer e la si scrive nel nuovo file con 1 sola operazione I/O per pagina.

> [!tip] La magia dello Streaming
> Anziché compiere letture e scritture rigide creando il file temporaneo su disco, i Database sfruttano lo **Streaming** (o pipelining). 
> - Chi produce i record in ordine nella fase di sorting non deve "scriverli" alla fine, ma li "passa in streaming" (una volta calcolati) in pasto alla funzione che li scrive sul nuovo disco. 
> - La funzione consumatrice riceve record già ordinati, per cui li compila in una pagina nel buffer, ed al riempimento esegue un write sul disco. Si evita quindi una intera lettura e una intera scrittura finale, saltando totalmente i passaggi su disco per i "file intermedi". 
> 
> *Risultato: Il costo totale I/O di riorganizzazione scende da un teorico $2+4+2$ pagine (senza streaming) ad appena $1 + 2 + 1$ (circa $4 \times N_{pages}$ totali), rendendo la procedura eccezionalmente rapida.*

---

## 3. Hash Dinamico (Dynamic Hashing)
Le strutture ad Hash Dinamico sono state studiate a lungo in informatica. Le organizzazioni dinamiche evitano il bisogno di fermare il sistema per una riorganizzazione globale, adattandosi localmente e riposizionando i record inserimento per inserimento. Nonostante ciò, non esiste un'organizzazione hash dinamica perfetta, motivo per cui nel mondo reale si usano quasi solo i B-Tree.

### A. Virtual Hashing e Extendable Hashing
- **Idea Base:** A differenza della riorganizzazione statica globale, questi approcci quando arrivano al 150-160% di capacità, decidono di **raddoppiare lo spazio globale** (es. dal modulo $M$ a $2M$, per dimezzare la densità e portarla ad un ottimale 80%). Ma per evitare di ridistribuire l'intero file, lo fanno **pagina per pagina** on-demand.
- Quando si estende lo spazio (es. si passa a modulo 14), se la pagina numero $5$ si è riempita fino ad esplodere in overflow, solo e soltanto i dati della pagina $5$ vengono ricalcolati con modulo 14 (quindi si spalmano fra la vecchia pagina $5$ e la nuova $5+7 = 12$). Tutte le altre pagine rimangono temporaneamente calcolate in modulo 7.
- **Virtual Hash:** Usa una **Bitmap in RAM** per sapere chi è stato espanso e chi no. Per trovare un record, parto dall'esponente maggiore (modulo 28), guardo in RAM la bitmap. Se leggo `1` vado alla pagina corrispondente; se leggo `0` la pagina non è ancora stata formata da uno sdoppiamento, quindi scendo al modulo inferiore (es. 14, e poi 7).
- **Extendable Hash:** Usa una logica simile ma, al posto della bitmap in RAM, adotta una **Directory (Tabella Hash)** in memoria che espone fisicamente i puntatori, sdoppiandoli laddove serva.
- **Svantaggi Severi:**
  - Garantisce l'illusione di avere **zero overflow**, eppure questo ha un costo salatissimo. Splitterà ogni pagina non appena raggiunge il 100% spaccandola a metà in due pagine che saranno forzatamente vuote per metà, causando una densità media molto scarsa del **75%**.
  - Mantenere la Bitmap / Directory in RAM è poco problematico se il file è piccolo, ma per scale inaudite consuma enormi quantitativi di buffer. Se si è costretti a scriverla su disco per limitazioni fisiche di spazio, crollano le performance della struttura e da una lettura si passa a due letture per ogni operazione.

### B. Linear Hash
- **Idea Base:** Per non subire i costi ram imposti da Bitmap e Directory si usa un trucco semplicissimo. Il sistema tiene in memoria solo 1 puntatore logico **(P)** che avanza gradualmente ed identifica fino a dove l'algoritmo ha "diviso/sdoppiato" in due. A sinistra di $P$ le pagine operano col nuovo modulo $2M$, a destra operano col vecchio modulo $M$.
- **Overflow asincrono:** Se capita un overflow su una specifica pagina (es. la $6$), l'algoritmo non divide la pagina 6. Anzi, accetta l'overflow alla vecchia maniera, ma va in compenso a dividere in due **la pagina indicata dal puntatore $P$** e fa avanzare il puntatore di uno step. Arriverà il momento in cui $P$ raggiungerà la pagina 6 e l'overflow verrà risolto.
- **Vantaggi:** Questo approccio ha il **costo in memoria pari a ZERO** (nessuna bitmap ausiliaria). Permette al DB Administrator di decidere arbitrariamente il Loading Factor globale per controllare l'occupazione.
- **Svantaggi:** Genera una distribuzione del file **"schizofrenica"** con due insiemi che coesistono. La metà delle pagine appena passate sotto la scure dello "sdoppiamento asincrono a caso" avranno una densità patetica (scendendo magari al 40%) e le pagine restanti avranno invece una densità molto superiore alla media target prestabilita (generando fastidiosi overflow).

### C. Spiral (o Exponential) Hashing
- **Idea Base:** Miglioramento netto sul linear hash. Si adotta una **funzione matematica esponenziale** nella funzione di calcolo dell'hash che faccia distribuire e collassare i record maggiormente sulle prime pagine (alta probabilità) piuttosto che nelle ultime (bassa probabilità).
- **Vantaggi:** Mitiga il dramma del Linear Hashing in cui tutte le pagine hanno la densità "sbagliata". Qui, le pagine creano un andamento stabile e uniforme, per cui in ogni momento almeno **il 50% esatto delle pagine si mantiene nei paraggi della densità media target prefissata**.
- **Svantaggi:** La metà "periferica" delle pagine (un 25% troppo piene e 25% troppo vuote) si trova ancora nello spazio estremo, con la più densa larga esatta il doppio della meno densa. Nessuna di queste dinamiche offre una distribuzione 100% pulita e regolare. E da questo stallo si arriva ai B-Tree.

---

## 4. B-Trees (Introduzione)
Un B-Tree può essere immaginato come un *Balanced Binary Search Tree* (Albero Binario di Ricerca Bilanciato), convertito, raggruppato e ingegnerizzato appositamente per essere serializzato all'interno delle Pagine su disco.

### Perché i B-Tree sconfiggono gli alberi in RAM
- In un albero binario in RAM c'è 1 solo record per nodo. Se trasportato su disco, ogni traversata del grafo implicherebbe un salto da una pagina all'altra, sprecando l'I/O (con $N$ pari a milioni si avrebbe $\log_{2}(N)$ accessi al disco, un totale suicidio per performance). 
- I B-Tree compattano su se stessi più livelli gerarchici. Ogni "nodo" (node) del B-Tree ospita e corrisponde sempre **esattamente a una intera pagina su disco**.

### Proprietà Strutturali e di Ricerca:
1. **High Fan-Out (Ordine M):** L'albero ha un Ordine o parametro $M$ che definisce il numero massimo di figli diretti che un nodo padre possiede (il suo fan-out). Un nodo contiene, quindi, al massimo $M$ puntatori e $M-1$ record.
2. **Totalmente Bilanciato:** In un B-Tree la lunghezza del cammino radice-foglia è categoricamente sempre uguale per tutti. L'albero è perfettamente simmetrico in larghezza e profondità (il che garantisce una stabilità temporale pazzesca e tempi prevedibili).
3. **Efficienza nell'Interval Search:** I dati nelle foglie e nei nodi interni mantengono rigorosamente un ordine sequenziale. Questo permette agilmente a una range-query su disco di arrivare nell'albero alla foglia estrema inferiore, recuperare l'ID, e poi scorrere i nodi fratello orizzontalmente via pointer con eccezionali tempi di risposta (eliminando i difetti dell'Hashing).
4. **Appiattimento della ricerca:** Il costo IO massimo nel caso di una query puntuale equivale all'altezza logaritmica massima dettata dalla limitazione di riempimento $M/2$. Anche con Miliardi di istanze su disco un fan-out importante permette in **2, 3 massimo 4 salti in profondità di pagina ($O(log_M N)$)** di estrapolare da un trilione di tuple il dato richiesto in pochi millisecondi.
5. **Certezza di densità (50-100%):** Lo scotto da pagare per mantenere perfetto questo asse dimensionale lo fa l'algoritmo: appena un blocco raggiunge il 100% (supera M-1 record per colpa di un insert), viene spezzato equamente a metà e spinge il puntatore al genitore; se un nodo perde tuple tramite Delete, scendendo sotto il 50%, preleva dal gemello adiacente o si fonde (merge) per rimanere sempre e perennemente compreso entro lo stallo 50%-100% di riempimento garantito del disco.
