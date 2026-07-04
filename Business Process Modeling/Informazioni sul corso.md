### Obiettivi

Il corso mira a conciliare tecniche di astrazione e notazioni diagrammatiche di alto livello con approcci modulari e strutturali. L'obiettivo è mostrare l'impatto delle proprietà di analisi e verifica dei processi di business sulla scelta dei linguaggi di specifica e modellazione più adatti. Al termine del corso, gli studenti acquisiranno familiarità con la terminologia dei processi di business, con diversi modelli e linguaggi per la rappresentazione dei processi, con diversi tipi di proprietà logiche che tali modelli possono soddisfare e con diverse tecniche di analisi e verifica. Gli studenti sperimenteranno inoltre alcuni tool per la progettazione, sintesi e analisi dei processi di business.

---

### Panoramica del corso

Business process management. Evoluzione delle Enterprise Systems Architectures. Modelli concettuali e meccanismi di astrazione. Reti di Petri: invarianti, S-system, T-system, sistemi Free-choice e loro proprietà. Workflow net e workflow module. Workflow pattern. Event-driven Process Chains (EPC). Business Process Modelling Notation (BPMN). Analisi delle prestazioni dei processi. Simulazione di processi. Process Mining.

### Esame

La valutazione si basa su un **progetto di gruppo** e un **esame orale**.

La [registrazione](https://esami.unipi.it/esami/ "https://esami.unipi.it/esami/") all'esame è obbligatoria.

Lo studente deve dimostrare la capacità di mettere in pratica ed eseguire, con consapevolezza critica, le attività illustrate o svolte sotto la guida del docente durante il corso.

#### FAQ sul progetto

- **Quali sono i prerequisiti per l'assegnazione di un progetto?** _Non ci sono prerequisiti, ma il docente darà per scontato che tu abbia già studiato tutto il materiale del corso (in caso contrario, è molto probabile che non riuscirai a consegnare il progetto in tempo)._

- **Quante persone possono lavorare insieme sullo stesso progetto?** _I progetti vengono assegnati a singoli o a gruppi di due persone. Eccezionalmente possono essere ammessi gruppi di tre, ma serve una motivazione solida._

- **Quando è possibile richiedere la descrizione del progetto?** _Dopo la fine delle lezioni, in qualsiasi giorno (lavorativo) dell'anno._

- **Come si richiede la descrizione del progetto?** _Inviando un'email al docente (possibilmente includendo il testo `BPM project request` nell'oggetto, e obbligatoriamente includendo nomi completi, numeri di matricola e indirizzi email di tutti gli studenti del gruppo). Il docente risponderà (entro pochi giorni) con la descrizione del progetto._

- **Quale notazione grafica va usata nella modellazione?** _A tua scelta: tipicamente EPC va bene per rappresentare le orchestration, BPMN per orchestration, collaboration e choreography diagram._

- **Quali tool usare per disegnare diagrammi EPC o BPMN?** _Alcuni tool sono suggeriti in questa pagina, ma sei libero di valutarne altri e scegliere quello che preferisci. Ad esempio, alcuni tool cross-platform sono: **yEd** è versatile, facile da usare, ha potenti funzionalità di layout automatico ma non può esportare i diagrammi nei formati .epml e .bpmn; **Visual Paradigm online** è anch'esso versatile e può esportare i diagrammi in vari formati; **Camunda Modeler** offre le funzionalità essenziali per disegnare buoni diagrammi BPMN. Motiva brevemente la tua scelta nella relazione._

- **Quali tool usare per la soundness analysis delle workflow net?** _Il suggerimento è provare prima **WoPeD**, e poi **Woflan** come riserva (come applicazione Microsoft Windows o come plugin di ProM, eseguibile su tutte le piattaforme) se WoPeD non risponde abbastanza velocemente o se vuoi raccogliere informazioni sulle error sequence per riparare il modello. Se trovi altri tool utili allo scopo, sentiti libero di usarli._

- **Come si convertono i diagrammi grafici in workflow net?** _Da gennaio 2026 è disponibile online un tool prototipale di conversione: [https://bpmn2petrinet.com/](https://bpmn2petrinet.com/ "https://bpmn2petrinet.com/"). Per la migliore esperienza è consigliato Google Chrome. Nota che il tool è ancora nelle prime fasi di sviluppo, quindi i risultati potrebbero non corrispondere sempre alle aspettative; in alcuni casi può essere necessaria la conversione manuale. Anche ProM fornisce alcuni plugin di conversione, ma il loro output è tipicamente più complesso dell'approccio presentato nel corso. Se scopri altri tool che velocizzano la conversione, sei libero di usarli._

- **Qual è la scadenza per la consegna del progetto?** _Non c'è una scadenza fissa; in media, però, il lavoro richiede almeno una settimana di impegno._

- **Cosa succede se una persona lascia il gruppo?** _Devi avvisare immediatamente il docente e scegliere se preferisci completare il lavoro individualmente o richiedere un altro progetto in seguito._

- **Come si consegna il progetto?** _Devi inviare al docente una breve relazione di progetto in formato .pdf insieme ai file sorgente di tutti i diagrammi e le reti che hai progettato. Facoltativamente, puoi inviare la checklist di soundness analysis (disponibile sul canale Microsoft Teams) per uno qualsiasi dei tuoi modelli._

- **Quando si discute il progetto?** _Preferibilmente al primo appello successivo alla consegna del progetto, vedi il [calendario accademico delle attività](https://didattica.di.unipi.it/en/master-programme-in-data-science-and-business-informatics/academic-calendar-2025-2026/ "https://didattica.di.unipi.it/en/master-programme-in-data-science-and-business-informatics/academic-calendar-2025-2026/")._

- **È necessario aver già consegnato il progetto per iscriversi all'esame?** _No. Ma naturalmente il progetto deve essere consegnato in tempo per essere discusso all'esame orale effettivo._

#### FAQ sull'esame

- **Come ci si iscrive all'esame?** _Come al solito, devi inserire la tua scelta sul portale [ESAMI](https://esami.unipi.it/esami/ "https://esami.unipi.it/esami/")._

- **Quali sono le date dell'esame?** _LE DATE PUBBLICIZZATE SUL PORTALE ESAMI NON SONO NECESSARIAMENTE QUELLE DELL'ESAME EFFETTIVO. Dopo l'iscrizione, sulla base dei progetti ricevuti e di eventuali vincoli comunicati da ciascuno studente, il docente pubblicherà un calendario provvisorio su questa pagina web e informerà via email o su Teams._

- **Come è organizzato l'esame?** _L'esame è orale ed è organizzato in due parti: la prima parte è dedicata alla discussione del progetto, la seconda riguarda tutti gli argomenti trattati nel corso._

- **Come è organizzata la discussione del progetto?** _TUTTI I MEMBRI DEL GRUPPO DEVONO ESSERE PRESENTI ALLA DISCUSSIONE DEL PROGETTO. Tutti i membri devono dimostrare di aver partecipato a tutte le attività del progetto. Una valutazione negativa del progetto può richiedere di rielaborare alcune parti, inviare una relazione rivista e programmare un nuovo esame (eventualmente all'appello successivo). Una valutazione positiva del progetto consente a ciascun membro del gruppo di accedere alla seconda parte dell'esame._

- **Come è organizzata la seconda parte dell'esame?** _MEMBRI DIVERSI DEL GRUPPO POSSONO CHIEDERE DI PROGRAMMARE LA SECONDA PARTE DELL'ESAME IN GIORNI DIVERSI. Le domande possono riguardare (ma non sono limitate a): i concetti, le definizioni, la terminologia e le tecniche più rilevanti; il loro significato intuitivo e la formalizzazione; proof sketch di enunciati formali; esercizi di piccole dimensioni. Gli argomenti segnati come facoltativi nella tabella delle lezioni possono essere discussi su richiesta dello studente._

- **È possibile passare la prima parte dell'esame e fallire la seconda?** _Speriamo non succeda, ma sì, è possibile: in tal caso lo studente dovrà iscriversi a uno degli appelli successivi. A seconda del singolo caso, potrebbe anche essere assegnato un nuovo progetto._
