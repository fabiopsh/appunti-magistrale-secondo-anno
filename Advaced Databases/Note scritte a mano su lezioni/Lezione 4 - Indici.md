# Lezione 4 - B-Trees e Indici (Organizzazioni Secondarie)

> [!abstract] Argomenti della Lezione
> - Recap limiti dell'Hash e passaggio ai B-Trees.
> - **B-Trees Base**: Struttura, Inserimento, Cancellazione e Costi I/O.
> - **B+ Trees**: Differenze col B-Tree, vantaggi dell'elevato Fan-Out e gestione in memoria.
> - **Indici (Organizzazioni Secondarie)**: Definizione, indici Clustered vs Unclustered.
> - **Liste Invertite (Inverted Lists)**: Gestione di attributi non univoci, ottimizzazione tramite ordinamento dei RID e Approssimazione di Cardenas per i costi I/O.

---

## 1. Introduzione e Limiti dell'Hashing
Nelle lezioni precedenti si è visto come l'Hash (sia statico che dinamico) sia formidabile per la *ricerca per uguaglianza* (equality search). Tuttavia, possiede due pesanti limitazioni:
1. **Pessimo per la ricerca per intervalli (Range Search):** L'unica strada percorribile per un intervallo in un Hash è il *table scan* dell'intero file.
2. **Prevalentemente Statico:** Le varianti dinamiche non riescono a garantire una densità costante e uniforme dello spazio su disco.

Per questo motivo, la quarta organizzazione fondamentale che andiamo a studiare è quella basata su **Alberi (B-Trees)**. Non è un'evoluzione "migliore" in senso assoluto, ma un'alternativa con pro e contro specifici.

---

## 2. B-Tree (Base)
Un B-Tree è fondamentalmente un **Albero di Ricerca (Search Tree)** salvato su disco. 
- In un search tree, i record interni servono a instradare la ricerca (tutto ciò che è a sinistra è minore, tutto ciò che è a destra è maggiore).
- La qualità e le prestazioni di un albero di ricerca dipendono da quanto questo è **bilanciato**. Se fosse totalmente sbilanciato a sinistra, la ricerca degraderebbe a un costo lineare.

### Caratteristiche Strutturali
- **Ordine $M$ (Fan-out):** È il numero massimo di figli (puntatori) che un nodo può avere. Ogni nodo/pagina del B-Tree contiene al massimo $M$ puntatori e $M-1$ record.
- **Perfettamente Bilanciato:** Tutte le foglie si trovano esattamente allo stesso livello.
- **Densità (Fill Factor):** Ogni nodo (tranne la root) deve essere pieno almeno al **50%** (ovvero contenere almeno $\approx M/2$ record).
- **Altezza dell'Albero ($H$):** Il numero di livelli. Dato che i record crescono in modo esponenziale per ogni livello in base al fan-out, l'altezza $H$ è stimabile come il logaritmo in base $M/2$ (nel caso pessimistico di riempimento al 50%) del numero di record: $H \approx \log_{M/2}(N_{records})$. Se si è ottimisti, la base è $M$.

### Costi di Accesso
- **Ricerca Uguaglianza (Equality):** Nella media il record si trova in una foglia. (Se $M=100$, il 99% dei record risiede fisicamente nelle foglie). Quindi il costo è pari ad $H$ (scendere dalla radice alla foglia).
- **Ricerca Intervallo (Range):** **Quasi ottimale.** Essendo i record *ordinati*, si scende per $H$ salti fino al primo valore utile, e poi si scorrono in orizzontale solo ed esclusivamente i nodi/fogliate interessati dal range. Se occorre leggere il 10% dei record di un database, leggerò solo il 10% delle pagine.

### Inserimento
- La ricerca per inserire un record **termina sempre in una foglia**.
- Se c'è spazio, si inserisce e basta (costo: 1 lettura della foglia, 1 scrittura).
- Se la foglia è satura (100%), subisce uno **Split** (si divide in due). Entrambe le nuove foglie si ritrovano al 50% e il record mediano viene "promosso" e spinto al nodo padre (il livello sopra).
- Se anche il padre è pieno, lo split si propaga verso l'alto (finanche alla Root, che sdoppiandosi aumenta l'altezza dell'albero di 1).
> [!tip] Costo di inserimento reale
> Il caso peggiore (split che si propaga dalla foglia alla root) costa $2H+1$ scritture, ma accade rarissimamente. Nel 99% dei casi, la foglia ha spazio e lo split avviene 1 volta ogni $M/2$ inserimenti. Pertanto, il costo tipico è solo quello della lettura del cammino + 1 scrittura della foglia aggiornata.

### Cancellazione
- Si cancella sempre partendo dalle foglie (se il record è in un nodo interno, viene scambiato con il suo predecessore/successore che si trova sicuramente in una foglia).
- Se dopo la rimozione la foglia scende sotto il 50%, interviene il ribilanciamento:
  - **Rotazione:** Si "ruba" un record dalla pagina adiacente.
  - **Merge (Fusione):** Se l'adiacente è anch'esso povero di record, si fondono due pagine in una, ed il record mediano viene richiamato dal nodo genitore. (Anche il merge può propagarsi in alto riducendo l'altezza dell'albero).

---

## 3. B+ Tree (La variante standard di fatto)
Nel **B+ Tree**, l'albero viene nettamente diviso in due logiche:
1. **Nodi Interni (Sparse Index):** Contengono *esclusivamente* chiavi di routing (per capire dove scendere) e puntatori. Nessun record effettivo è stivato qui.
2. **Foglie (Sequential File):** Tutti i record (dati reali) o i RIDs completi risiedono unicamente al livello delle foglie. Le foglie formano una vera e propria lista sequenziale concatenata.
![[Pasted image 20260818124924.png]]
### Perché si preferisce il B+ Tree?
Nel B-Tree tradizionale, un nodo interno ospita l'intero record (che può pesare Kilobytes per via di attributi testuali lunghi). Questo limita drasticamente quanti record possono entrare in una pagina, abbassando il Fan-out $M$.
Nel **B+ Tree**, dato che i nodi interni tengono *solo* l'intero o la stringa breve della chiave + puntatore, si possono stipare **centinaia o migliaia di puntatori per pagina** (es. $M = 500$). 
> [!important] Appiattimento dell'Albero e Indici in RAM
> Con un fan-out di 500, un albero a 3 livelli contiene $500 \times 500 \times 500 = 125$ milioni di record. L'albero diventa **estremamente piatto** (Height $= 2$ o $3$).
> Ancora più importante: la porzione "Sparse Index" (la radice e i nodi intermedi) pesa pochissimo (pochi MB/GB) e **risiede spessissimo interamente in Memoria Principale (RAM/Buffer)**. 
> 
> *Conseguenza:* Il costo I/O di una Equality Search in un B+ Tree è di fatto **1** (tutta la navigazione dell'albero avviene a costo zero in RAM, e il disco viene interpellato 1 sola volta per caricare la Foglia finale).

---

## 4. Indici (Organizzazioni Secondarie)
Ogni tabella ha una sola organizzazione primaria (su cui i dati sono fisicamente ordinati nel file). Se il Database usa un Heap, il table scan è rapido ma serve un Table Scan per trovare *qualsiasi cosa*.
Per ottimizzare la ricerca su specifici attributi si creano gli **Indici**.

### Definizione
Un indice è una struttura dati esterna alla tabella (una funzione/mappa logica) composta da coppie:
`[ Valore_Attributo , Record_ID (RID) ]`

> [!note] Terminologia dei DB
> In questo specifico campo di letteratura algoritmica, per "**Primary Key**" si intende un qualsiasi attributo *Univoco* (Unique), mentre per "**Secondary Key**" si intende un qualsiasi attributo *Non Univoco* (che può avere duplicati). Non confondetelo col concetto di Primary Key del modello Relazionale SQL.

### Come si implementa fisicamente un Indice?
Essendo a sua volta una collezione di tuple (Chiave, RID), va salvato su disco tramite Hash o B+ Tree. 
- Di norma, si usa **sempre il B+ Tree**. Dato che l'indice è molto snello rispetto ai dati, l'eventuale vantaggio dell'Hash (1 singolo salto per Equality) decade, perché anche il B+ Tree risiedendo in RAM assicura un costo I/O di 1 per l'Equality. Inoltre, il B+ Tree permette le Range Queries sull'indice.

### Clustered vs Unclustered Index
- **Clustered Index:** L'indice è strutturato in modo che il file dati sottostante sia *ordinato (o quasi ordinato)* sulla stessa chiave dell'indice. In questo caso rarissimo ed eccellente, leggere il 10% dell'indice implica leggere solo il 10% delle pagine fisiche del file (poiché i record sono fisicamente continui/contigui).
- **Unclustered Index (Standard):** Il file fisico non è ordinato in base alla chiave dell'indice. Se devo recuperare 1000 record tramiti un range search, nell'indice li troverò vicini, ma i loro RID punteranno a 1000 pagine totalmente randomiche sul disco! Costo: potenzialmente 1000 I/O.

---

## 5. Inverted Lists e Costi su Indici Unclustered

### Gestire le Chiavi non Univoche (Inverted Index)
Se l'indice è costruito su un attributo in cui si prevedono duplicati (es. "Anno di Nascita" o "Voto"), invece di ripetere la chiave, si implementa una **Inverted List**:
`[ Chiave , Lista_di_RID ]`
*(es: 1999 -> [RID1, RID4, RID29, RID104])*

Lo spazio occupato da un indice del genere dipende da:
1. Dimensione per stoccare una singola volta ogni chiave distinta (Count Distinct).
2. Dimensione dei RID moltlipicata per $N_{records}$ (dato che ogni record nel DB deve per forza avere il proprio RID listato da qualche parte nell'indice).

### Ottimizzazione I/O tramite l'Ordinamento dei RID
Si consideri di dover fare una query che estrae 800 record usando un Indice Unclustered. Se si saltasse a leggere il disco RID per RID a caso, si pagherebbero 800 letture. Magari la Pagina 3 del DB verrebbe letta e svuotata dalla RAM dieci volte diverse.

**Soluzione:** L'algoritmo *ordina* la lista dei RID estratti dall'indice prima di andare ad interrogare il file dati reale. 
In questo modo:
1. Si leggono tutti i RID che puntano alla Pagina 1.
2. Si legge la Pagina 1 dal disco *una sola volta*.
3. Si leggono i RID per la Pagina 2, ecc.
Così si ha la garanzia matematica che **nessuna pagina verrà letta più di una volta**.

### La Funzione (Approssimazione) di Cardenas
Per calcolare il costo I/O del recupero dati con liste RID ordinate, bisognerebbe usare una complessa formula probabilistica per calcolare "quante pagine fisiche verranno effettivamente lette se estraggo $K$ records da un file totale di $N_{pages}$".
Il professore specifica che non serve memorizzare la vera funzione statistica di Cardenas. 

> [!tip] Approssimazione del Costo
> Il numero effettivo di pagine lette dal disco (Costo) è rigorosamente compreso tra due limiti superiori (upper bounds):
> 1. Non potrò mai leggere più pagine del totale dei record che cerco ($K$).
> 2. Non potrò mai leggere più pagine del totale delle pagine esistenti nel DB ($N_{pages}$).
>
> Di conseguenza, il costo reale è approssimabile in sicurezza a: **$Costo \approx \min(K, N_{pages})$**
> *(Esempio: cerco 50 record su 1000 pagine -> leggo circa 50 pagine. Cerco 1500 record su 1000 pagine -> leggo le 1000 pagine intere e basta).*
