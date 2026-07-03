---
tags:
  - università/business-process-modeling
  - bpmn
  - choreography
  - collaboration
data: 2026-07-03
lezione: "07b — Other BPMN features"
corso: "MPB (6 cfu, 295AA)"
professore: "Roberto Bruni"
fonte: "Weske, *Business Process Management*, Sect.4.3, 4.7, 5.7 · Dumas et al., *Fundamentals of BPM*, Ch.3-4"
---

# More BPMN

In [[07a - EPC e BPMN]] abbiamo visto lo scheletro di BPMN — swimlane, flow objects, connecting objects. Questa lezione aggiunge gli elementi che rendono BPMN davvero espressivo (e complesso): gli **artefact** (dati, gruppi, annotazioni), i **marker** che specializzano attività ed eventi, la ricchezza degli **eventi** catching/throwing, la modellazione della comunicazione con **collaboration** e **message flow**, il riuso tramite **call activity**, e infine le **choreography** con la loro notazione a bande.

---

## Artefact e associazioni

Oltre agli elementi che influenzano il flusso, BPMN permette di aggiungere informazione "di contorno" tramite gli **artefact**. Sono pensati per dare flessibilità: un tool può estendere la notazione base aggiungendo artefact adatti al dominio. Ne esistono tre tipi predefiniti — **data object**, **group** e **text annotation** — ma la caratteristica comune è che **non hanno effetto diretto** sul sequence flow o sul message flow: servono solo a documentare.

Gli artefact si collegano agli oggetti del flusso tramite un'**association**, rappresentata da una linea punteggiata (con eventuale punta). La **text annotation**, in particolare, è un commento a fumetto (call-out punteggiato) che si aggancia a qualsiasi oggetto per fornire documentazione aggiuntiva. Il **group** (rettangolo arrotondato a linee tratteggiate) raggruppa oggetti che logicamente stanno insieme, sempre **senza effetto comportamentale**.

---

## Marker: specializzare attività ed eventi

La filosofia di BPMN, ricordiamo, è "poche forme base, tanti marker". I **marker** interni di un'attività dicono due cose: la sua **natura** (il *task type*) e il **modo in cui viene eseguita** (l'*activity marker*).

> [!definition] Task type (la natura dell'attività)
>
> - **Send / Receive task**: inviano o ricevono un messaggio.
> - **User task**: richiede l'interazione diretta di una persona *attraverso un'interfaccia*, con l'aiuto di un sistema software.
> - **Manual task**: eseguita *interamente* da una persona, **senza** l'assistenza di un computer.
> - **Service task**: task automatico in cui il processo interagisce con un **servizio/sistema esterno** (web service, API), senza intervento umano.
> - **Script task**: task automatico in cui uno **script** (JavaScript, Python, ...) è eseguito **internamente** al motore BPMN, senza chiamare servizi esterni.
> - **Business rule task**: valuta un insieme di regole di business.

> [!definition] Activity marker (il modo di esecuzione)
>
> - **Loop**: l'attività si ripete finché una condizione di loop è vera (testata prima o dopo l'esecuzione).
> - **Multiple Instances (MI)**: più istanze della stessa attività, avviate **in parallelo** o **in sequenza** (es. una per ogni riga d'ordine).
> - **Ad-hoc sub-process**: contiene solo task, ognuno eseguibile un numero arbitrario di volte finché non è soddisfatta una condizione di completamento.
> - **Compensation**: gestisce la compensazione (annullamento) di un'attività già completata.

Il **loop marker**, ad esempio, permette di marcare un sub-process ripetibile (la classica "ministerial correspondence") nascondendo i dettagli interni: ma è **essenziale definire le condizioni d'uscita** dal loop, altrimenti il processo non termina.

---

## Eventi: catching e throwing

Gli eventi in BPMN sono molto più che un cerchio di start/end. Un evento può **catturare** (catch) un trigger che arriva dall'esterno, oppure **lanciare** (throw) un risultato verso l'esterno. Il tipo di trigger/risultato è indicato da un **marker interno**.

> [!definition] Catching vs throwing
>
> - **Start event**: cattura un trigger e **avvia** una nuova istanza di processo.
> - **Intermediate event (catching)**: il processo può proseguire **solo dopo** aver catturato l'evento (attesa).
> - **Intermediate event (throwing)**: lancia un evento e il processo **continua**.
> - **End event**: lancia un evento quando si raggiunge la fine del processo.

I marker interni combinano il tipo di evento con il suo trigger:

![Tabella dei marker interni degli eventi BPMN, con righe Plain/Message/Timer/Error/Terminate e colonne Start-Intermediate (Catching) ed End (Throwing): plain = cerchio vuoto, message = busta, timer = orologio, error = fulmine, terminate = cerchio pieno; il bordo distingue start (sottile), intermediate (doppio), end (spesso)](assets/07b-more-bpmn_p20_event-markers.png)
*Fig. — Alcuni marker interni degli eventi. La stessa forma-icona (busta, orologio, fulmine...) assume significato diverso a seconda che il bordo indichi start, intermediate o end, e a seconda che l'evento sia catching o throwing.*

Alcuni casi tipici: un **intermediate message event** (busta) segnala l'attesa/ricezione di un messaggio, creando un "process break" in cui il processo si ferma finché il messaggio non arriva; un **timer start event** (orologio) crea un'istanza quando accade un certo evento temporale, mentre un **timer intermediate event** blocca il processo fino a un time-out; un **terminate end event** (cerchio pieno) causa la **cessazione immediata** dell'istanza corrente e di ogni sub-process (ma non del processo padre, se esiste).

> [!note] Eventi vs attività
>
> BPMN non fa una distinzione netta, ma tipicamente: gli **eventi sono istantanei**, mentre le **attività hanno una durata**. Un messaggio ricevuto si può quindi modellare sia come *receive task* (attività) sia come *intermediate message event* (evento), a seconda che lo si voglia vedere come lavoro con durata o come istante.

---

## Collaboration e message flow

Per modellare la comunicazione tra partecipanti si usa la **collaboration**, cioè un diagramma con **due o più pool**, ognuno un partecipante (che può essere collapsed o mostrare il processo interno). Ogni possibile comunicazione è un **message flow** tra pool.

> [!definition] Message flow
>
> Rappresenta una comunicazione (send/receive) tra **due partecipanti separati** (entità o ruoli di business), disegnato come una **linea tratteggiata con punta di freccia aperta** (e un pallino all'origine). Regole: ogni **evento** e ogni **attività** hanno **al più un** message flow; ogni **gateway** **nessuno** (i gateway non comunicano!); ogni **pool** un numero qualsiasi.

Il passaggio da processo singolo a collaboration è graduale: si parte da un processo stand-alone, si aggiunge un pool collapsed che rappresenta il partner (black-box), poi lo si espande per mostrare l'interazione completa. I dati scambiati si possono annotare con i **message data object** (una busta che rappresenta il contenuto della comunicazione).

![Collaboration Seller & Customer: il pool Customer (collapsed) in alto, il pool Seller in basso suddiviso in lane (ERP system, Warehouse & distribution, Sales); message flow tratteggiati collegano i due pool scambiando purchase order, purchase order [confirmed], shipping address, invoice, product [packaged], payment; il processo del seller usa gateway XOR, AND e task annotati con buste (message task in verde)](assets/07b-more-bpmn_p37_seller-customer.png)
*Fig. — Collaboration Seller & Customer. Il pool del Seller è diviso in **lane** (ERP, Warehouse, Sales). Gli **oggetti-busta** sopra i message flow sono **message data object**: descrivono cosa viene scambiato (purchase order, invoice, payment, ...) e in quale stato (es. `[confirmed]`, `[packaged]`). I task verdi con l'icona busta sono attività di invio/ricezione messaggio.*

### Deferred choice: l'event-based gateway

Un caso importante di comunicazione è la scelta che dipende da un **evento esterno**: non è il processo a decidere, ma "vince" ciò che arriva per primo. Per modellarlo BPMN ha l'**event-based (exclusive) gateway**, che è sempre seguito da eventi catching o receive task, e instrada il flusso verso l'evento/task che **accade per primo**. È esattamente la **scelta implicita / deferred** vista nei [[04 - Petri Nets|Petri net]]: la decisione è rimandata al momento in cui uno degli eventi si verifica.

---

## Data object, data store, associazioni

Il **data object** (icona a documento con angolo piegato) rappresenta informazione che scorre nel processo — documenti, email, lettere. È un artefact: non influenza direttamente il flusso, ma dice *quali informazioni* un'attività richiede o produce. Il suo **stato** si annota tra parentesi quadre (es. `Purchase order [confirmed]`). Per comodità lo **stesso** data object può comparire più volte nel diagramma, anche in stati diversi.

Il verso dell'**association** che lega data object e attività ne precisa il ruolo:

![Le tre forme di association tra data object e attività: undirected (linea semplice) = hand-over di informazione; directed (freccia) = information flow, il dato è letto all'inizio o scritto alla fine dell'attività; bidirected (doppia freccia) = il dato è modificato, cioè letto e scritto durante l'esecuzione. Sotto, esempi: read doc, write doc, modify doc, modify doc da [state1] a [state2]](assets/07b-more-bpmn_p54_data-association.png)
*Fig. — Le associazioni dei data object. **Undirected** = passaggio di consegne; **Directed** = flusso informativo (read all'inizio / write alla fine); **Bidirected** = modifica (read e write durante l'esecuzione, es. da `[state1]` a `[state2]`).*

Due varianti utili: il **data store** (persistente: un database o archivio che sopravvive oltre la vita dell'istanza di processo) e il **collection data object** (una collezione, es. la lista degli item di un ordine). Attenzione però: gli artefact danno informazione in più, ma **troppi artefact compromettono la leggibilità** del diagramma.

---

## Call activity: riuso e sotto-processi globali

Quando lo stesso sotto-processo serve in più modelli (per esempio un "Sign loan" usato sia per i mutui casa sia per i prestiti studenti), conviene definirlo **una volta sola** come processo globale e richiamarlo.

> [!definition] Call activity
>
> Un contenitore (wrapper) che **richiama** un sub-process o un task **definito globalmente**, riusandolo nel processo corrente. Si disegna con un **bordo spesso** per distinguerla da un sub-process locale.

> [!tip] Vantaggi dei processi globali
>
> - **Readability**: i processi restano più piccoli, i dettagli sono altrove.
> - **Reusability**: si definisce una volta, si usa molte volte.
> - **Sharing**: ogni modifica al processo globale si **propaga automaticamente** a tutti i modelli che lo invocano.

### Attached (boundary) event: gestire eccezioni

Un evento intermedio può essere **attaccato al bordo** di un'attività: quando l'evento viene catturato, l'attività è **abortita** e il flusso prosegue lungo un ramo alternativo. È il meccanismo standard per la **gestione delle eccezioni**: un **error event** (icona a fulmine) attaccato a un'attività cattura un fault e attiva il recupero (es. il "redo" nell'esempio di image manipulation); una versione *throwing* del fulmine lancia invece un'eccezione (es. un out-of-stock).

---

## Choreography: la notazione a bande

Chiudiamo con le **choreography**, introdotte in BPMN 2.0 e già incontrate concettualmente in [[06 - Orchestration e Collaboration]]. La differenza chiave con collaboration e orchestration è dove "vivono".

> [!definition] Choreography
>
> Definisce la **sequenza delle interazioni** tra partecipanti. A differenza degli altri diagrammi, **non esiste dentro un pool** e **non è eseguibile**: descrive solo come i partecipanti *dovrebbero* comportarsi. Può usare i message data object.

L'elemento base è il **choreography task**, che ha una notazione peculiare a **bande**.

![Notazione del choreography task: un rettangolo con una banda superiore e una inferiore, ognuna col nome di un partecipante, e al centro il nome del task; la posizione top/bottom delle bande è inessenziale. A destra, un choreography task con un Initiating Message (busta bianca) dal Participant A e un Return Message (busta grigia) verso il Participant B](assets/07b-more-bpmn_p87_choreography-task.png)
*Fig. — Choreography task. Ogni banda (in alto/in basso, indifferentemente) è un **partecipante**; il centro è il nome del task, cioè l'interazione. Le buste rappresentano l'**Initiating Message** (chi avvia) e l'eventuale **Return Message** (la risposta).*

Il flusso tra choreography task usa **sequence flow e gateway ordinari** per definire l'ordine delle interazioni; un vincolo importante è che **l'iniziatore di un'interazione deve aver partecipato a quella precedente** (altrimenti non saprebbe che è il suo turno).

> [!note] Da collaboration a choreography e ritorno
>
> Le due viste sono collegate. Da una **collaboration** si ricava la choreography per **proiezione** su ciascun partecipante (si tiene solo la sua parte di interazioni). Viceversa, da una choreography si possono derivare i processi dei singoli partecipanti — ma non sempre il risultato è quello atteso: la **realizzabilità** di una choreography (esistono processi locali che, interagendo, riproducono esattamente la choreography globale?) è un problema non banale, collegato alla compatibilità vista in [[06 - Orchestration e Collaboration]].

Con questo si chiude il quadro delle notazioni high-level. Da qui in avanti il corso torna ai **modelli formali** per *analizzare* i processi, non solo descriverli. → [[08 - Nets Intro]]
