---
tags:
  - università/advanced-software-engineering
  - cloud-edge-continuum
  - quantum-software-engineering
data: 2026-09-22
capitolo: "11 — Emerging Paradigms in Computing"
corso: "Advanced Software Engineering"
professore: "Antonio Brogi"
fonte: "Appunti di Emiliano Sescu (github.com/Faxatos), cap. 11"
---

# Paradigmi emergenti

## Cloud-Edge Continuum

> [!definition] Cloud-Edge Continuum
>
> Il **Cloud-Edge Continuum** unisce i punti di forza dell'**Edge Computing** (elaborare i dati vicino a dove vengono prodotti) e del **Cloud Computing**, estendendo i servizi cloud fino all'**Internet of Things** (IoT). Il risultato è un'infrastruttura **distribuita ed eterogenea**.

Vantaggi principali:

- **Potenza di calcolo**: si possono usare sia le risorse del cloud sia i dispositivi edge.
- **Connettività**: comunicazione migliore tra dispositivi, con trasferimento di dati più fluido.
- **Bassa latenza**: elaborare i dati vicino alla loro fonte riduce i ritardi e rende il sistema più reattivo.

Le applicazioni del futuro saranno soprattutto **a microservizi in container**, eseguite su un'infrastruttura continua Cloud-Edge. Gestirle però è difficile, perché sia l'infrastruttura sia le applicazioni cambiano di continuo:

- **Cambiamenti dell'infrastruttura**: il carico dei nodi può spostarsi, latenza e banda possono variare, i nodi possono entrare o uscire dalla rete all'improvviso, e possono esserci interruzioni temporanee di connessione.
- **Cambiamenti delle applicazioni**: il codice e i requisiti cambiano e richiedono adattamenti rapidi.

Per questo il deploy delle applicazioni va **gestito di continuo**, anche dopo il primo avvio.

### Monitoraggio

Serve un monitoraggio efficace sia delle applicazioni sia dell'infrastruttura: un sistema **leggero**, **tollerante ai guasti** e capace di adattarsi ai cambiamenti.

Un metodo efficace è il **continuous reasoning**: si analizzano sistemi grandi concentrandosi sui **cambiamenti recenti** e **riusando i risultati precedenti** dove possibile. Nel continuum bisogna considerare insieme i cambiamenti dell'applicazione e dell'infrastruttura per decidere se sostituire, spostare, riavviare o scalare i servizi.

Un esempio recente è **FogBrainX** ([GitHub](https://github.com/di-unipi-socc/fogbrainx)), che confronta le differenze nelle specifiche dell'applicazione e nei dati monitorati dell'infrastruttura. Aiuta a decidere dove collocare i servizi (*placement*):

- adattandosi ai cambiamenti dell'infrastruttura (es. risorse dei nodi o qualità della rete), che possono richiedere di spostare dei servizi;
- adattandosi ai cambiamenti nei requisiti dei servizi (software, hardware, IoT) o nelle esigenze di comunicazione, che possono richiedere aggiornamenti;
- gestendo l'aggiunta o la rimozione di servizi o di requisiti di comunicazione nelle specifiche dell'applicazione.

Prese le decisioni, FogBrainX le passa a **FogArm**, che esegue i comandi di gestione sull'infrastruttura Cloud-IoT.

### Gestione decentralizzata

Per la gestione decentralizzata ci sono due approcci interessanti:

- **Gestione osmotica** (*osmotic management*): i servizi dell'applicazione si adattano in base alle risorse disponibili e alle esigenze dell'applicazione. Le politiche di gestione possono disinstallare, spostare o scalare le applicazioni in tempo reale.
- **Gestione decentralizzata** ispirata al comportamento dei **batteri**:
  - ogni istanza dell'applicazione ha un proprio **agente di gestione** (una specie di mini-unità di gestione);
  - **regole semplici** fanno scattare azioni (es. disinstallare o replicare) in base ai dati monitorati;
  - dai comportamenti locali **emerge** un comportamento globale flessibile, utile per infrastrutture grandi, anche se più complesso da gestire.

---

## Quantum Software Engineering

> [!definition] Quantum Software Engineering (QSE)
>
> La **Quantum Software Engineering** applica solidi principi di ingegneria allo sviluppo, all'esercizio e alla manutenzione del **software quantistico** e della sua documentazione. L'obiettivo è creare software quantistico affidabile, efficiente sui computer quantistici e con costi contenuti.

Il **Manifesto di Talavera** per la QSE indica alcuni principi importanti, tra cui:

- la QSE deve essere compatibile con diversi linguaggi e tecnologie di programmazione quantistica;
- bisogna integrare calcolo **classico e quantistico**, usando i computer quantistici soprattutto per i compiti specifici in cui sono migliori (es. i problemi di fattorizzazione).

### Quantum Broker

Un esempio pratico di QSE è il **Quantum Broker**, che risponde alla domanda: "**Quale computer quantistico devo usare per eseguire il mio algoritmo?**". È utile soprattutto per chi non conosce bene i vari provider quantistici.

Anche dopo aver scelto un provider e avviato gli algoritmi, possono esserci problemi:

- **Disponibilità**: cosa succede se il computer quantistico diventa non disponibile durante l'esecuzione?
- **Requisiti**: come bilanciare costo, tempo e accuratezza?
- **Personalizzazione**: come adattare il modo in cui si sceglie il computer quantistico alle proprie esigenze?

> [!definition] Shot e distribuzione degli shot
>
> Un circuito quantistico ha un risultato **probabilistico**, quindi lo si esegue molte volte: ogni esecuzione è uno **shot**. Mettendo insieme i risultati di tutti gli shot si ottiene la distribuzione statistica dei risultati. La **distribuzione degli shot** consiste nel dividere gli shot di un circuito tra **più computer quantistici** e poi combinare i dati per avere il quadro completo.

Dato un circuito quantistico e dei requisiti specifici, il quantum broker sceglie il miglior insieme di computer quantistici su cui distribuire gli shot. Per ogni computer scelto individua i **compilatori** più adatti e il **numero di shot** da eseguire. I vantaggi sono:

- **Resilienza migliore**: dividere il lavoro tra sistemi quantistici diversi aumenta la tolleranza ai guasti.
- **Alta personalizzazione**: si può controllare molto nel dettaglio come vengono gestiti i calcoli.
- **Distribuzioni parziali**: ogni computer produce una distribuzione parziale, e le parziali si combinano per ottenere una visione completa dell'esecuzione del circuito, con la possibilità di metodi di unione più sofisticati.
