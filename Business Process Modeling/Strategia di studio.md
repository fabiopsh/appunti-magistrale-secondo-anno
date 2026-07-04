---
tags:
  - università/business-process-modeling
  - esame
  - metodo-di-studio
data: 2026-07-04
corso: "MPB (6 cfu, 295AA)"
professore: "Roberto Bruni"
fonte: "Elaborata da: modalità d'esame ufficiali, raccolta domande di appelli passati, progetto d'esempio (github.com/Slocon00/BPM-project)"
---

# Strategia di studio per l'esame

## Come funziona la valutazione (il quadro)

L'esame ha **due componenti**, entrambe orali, e per superarlo servono **due tipi di preparazione diversi**:

1. **Discussione del progetto** (di gruppo, 1-2 persone) — valuta la *pratica*: saper modellare uno scenario reale in EPC/BPMN, convertirlo in workflow net, verificarne la soundness con i tool, e scrivere una relazione. Solo chi passa questa parte accede alla seconda.
2. **Orale sulla teoria** — copre *tutti* gli argomenti del corso. Le domande sono di quattro tipi (dichiarati esplicitamente nelle FAQ):
   - concetti, definizioni e terminologia;
   - significato **intuitivo** + **formalizzazione** (entrambi: il prof vuole che tu sappia dire "cosa vuol dire" *e* scriverlo in simboli);
   - **proof sketch** di enunciati formali;
   - **esercizi di piccole dimensioni** (tipicamente: "disegna una rete che...").

> [!warning] Il vincolo d'ordine più importante
>
> Le FAQ dicono chiaramente: il progetto viene assegnato assumendo che tu abbia **già studiato tutta la teoria**. Quindi l'ordine giusto è: **prima la teoria, poi il progetto, poi il ripasso mirato per l'orale**. Chiedere il progetto prima di aver studiato è la trappola classica (non lo consegni in tempo).

---

## Le priorità (cosa pesa davvero)

Non tutte le lezioni pesano uguale all'orale. Incrociando la [[Raccolta domande esami passati]] con il programma:

> [!tip] Nucleo caldo (domande ricorrenti — va saputo alla perfezione)
>
> | Argomento | Frequenza | Lezione |
> |---|---|---|
> | Le 3 condizioni di soundness + notazione | ×3 | [[12 - Soundness]] |
> | S-invariant: definizione + 2 teoremi | ×3 | [[14 - Invariants]] |
> | Main theorem ($N$ sound $\iff N^\star$ live e bounded) **con dimostrazione** | ×2 | [[12 - Soundness]] |
> | Proprietà fondamentale S-invariant **con dimostrazione** | ×2 | [[14 - Invariants]] |
> | Marking equation lemma **con dimostrazione** | ×2 | [[11 - Net Matrices]] |
> | Rank theorem (condizioni + algoritmo) | ×2 | [[17 - Free Choice]] |
> | Disegnare una rete che viola proper completion | ×2 | [[12 - Soundness]] |
> | BPMN vs EPC (+ disegnare la notazione) | ×2 | [[07a - EPC e BPMN]] |
> | Footprint matrix + alpha algorithm | ×2 | [[05 - Process Mining]] |
> | Little's Law + Cycle Time Efficiency | ×2 | [[20 - Quantitative Analysis]] |

Il **nucleo formale del corso** (lezioni 08–17: reti, grafi, matrici, invarianti, soundness, S/T-system, free-choice) genera la stragrande maggioranza delle domande. Le lezioni discorsive iniziali (02–07) e finali (18–19) escono meno, ma "BPMN vs EPC" e "alpha algorithm" dimostrano che *nulla è escluso*.

---

## Il piano in 5 fasi

### Fase 1 — Teoria completa (≈ 2 settimane)

Studia le lezioni in ordine, con intensità differenziata:

- **Lettura scorrevole** (1 passata): [[02 - Business Processes]], [[03 - Visual Notation]], [[05 - Process Mining]], [[06 - Orchestration e Collaboration]], [[07a - EPC e BPMN]], [[07b - More BPMN]], [[18 - Workflow Systems]], [[19 - Conformance]] — qui serve capire i concetti e la terminologia, non memorizzare dimostrazioni.
- **Studio profondo** (2+ passate, carta e penna): [[04 - Petri Nets]], [[08 - Nets Intro]], [[09 - Occurrence Graph]], [[10 - Liveness]], [[11 - Net Matrices]], [[12 - Soundness]], [[13 - WFnets Construction]], [[14 - Invariants]], [[15 - S-T Systems]], [[16a - EPC Analysis]], [[16b - BPMN Analysis]], [[17 - Free Choice]], [[20 - Quantitative Analysis]], [[21 - WFnets Diagnosis]].

Regola pratica per il nucleo formale: per ogni definizione, chiediti *"so dirla a parole E scriverla in simboli?"* — l'orale chiede esplicitamente entrambe le cose.

### Fase 2 — Pratica con gli esercizi guidati

Lavora [[22 - Esercizi Guidati]] **rifacendo ogni esercizio su carta prima di leggere la soluzione**. Le competenze pratiche che l'orale verifica direttamente:

- simulare il token game;
- costruire un reachability/coverability graph;
- scrivere la matrice di incidenza e usare la marking equation;
- calcolare S-invariant e T-invariant a mano;
- verificare soundness via $N^\star$;
- trovare siphon/trap e applicare Commoner;
- calcolare cycle time e CTE.

### Fase 3 — Le dimostrazioni e i controesempi

> [!abstract] Checklist proof sketch (da saper riprodurre alla lavagna)
>
> - [ ] Proprietà fondamentale degli S-invariant ($I \cdot M = I \cdot M_0$) — [[14 - Invariants]]
> - [ ] S-invariant positive $\Rightarrow$ boundedness — [[14 - Invariants]]
> - [ ] Marking equation lemma (induzione sulla lunghezza di $\sigma$) — [[11 - Net Matrices]]
> - [ ] Main theorem: sound $\iff$ $N^\star$ live e bounded (almeno la direzione sound $\Rightarrow$) — [[12 - Soundness]]
> - [ ] Boundedness $\iff$ reachability graph finito — [[09 - Occurrence Graph]]
> - [ ] Proprietà fondamentale S-system / T-system — [[15 - S-T Systems]]

> [!abstract] Checklist controesempi (da saper disegnare in 30 secondi)
>
> - [ ] Una rete **non bounded**
> - [ ] Una rete **deadlock-free ma non live**
> - [ ] Una WF-net che viola **proper completion**
> - [ ] Una WF-net che viola **option to complete**
> - [ ] Una rete **non free-choice** (e saper dire perché)
>
> Questi sono chiesti spesso e sono punti "gratis" se preparati prima: tieni un piccolo repertorio mentale di reti minime, una per proprietà violata.

### Fase 4 — Il progetto

Dal progetto d'esempio ([Slocon00/BPM-project](https://github.com/Slocon00/BPM-project)): lo scenario tipico è un **processo organizzativo con più partecipanti** (es. una commissione di 3 persone che valuta il lavoro di un candidato, con cicli di revisione e richieste di chiarimento) più una **variante da modellare** (es. gestire diversamente l'esito negativo). I deliverable: diagrammi BPMN/EPC + reti + relazione PDF + file sorgente.

Workflow consigliato:

1. **Richiesta**: email al prof con oggetto `BPM project request`, nomi, matricole, email di tutti i membri.
2. **Modellazione**: BPMN con **Camunda Modeler** (esporta `.bpmn` nativamente) o Visual Paradigm; EPC se lo scenario è una pura orchestration. Motivare la scelta del tool nella relazione (richiesto).
3. **Conversione in workflow net**: prova [bpmn2petrinet.com](https://bpmn2petrinet.com/) (prototipo, verifica sempre l'output a mano) — la tecnica manuale è quella di [[16b - BPMN Analysis]] (activity+eventi → transition, flussi → place).
4. **Soundness analysis**: prima **WoPeD**, poi **Woflan** (standalone Windows o plugin ProM) se servono le error sequence per riparare il modello — teoria in [[21 - WFnets Diagnosis]].
5. **Relazione**: breve, in PDF, con la motivazione delle scelte di modellazione e i risultati dell'analisi. Opzionale ma consigliata: la checklist di soundness dal canale Teams.
6. **Budget di tempo**: almeno **una settimana piena** (stima ufficiale del docente). Ogni membro del gruppo deve saper discutere *tutte* le parti — la discussione è collettiva e il prof verifica la partecipazione di ognuno.

### Fase 5 — Simulazione dell'orale

Ultima settimana prima dell'esame:

1. Prendi la [[Raccolta domande esami passati]] e rispondi a **ogni domanda ad alta voce**, senza guardare gli appunti, simulando la lavagna per definizioni formali e disegni.
2. Per ogni risposta incerta, torna alla lezione collegata e rileggi solo quella sezione.
3. Ripassa le due checklist della Fase 3 fino a completarle senza esitazioni.
4. Riguarda il progetto: all'orale la discussione parte da lì, e domande di teoria possono agganciarsi alle scelte fatte nel progetto ("perché questa rete è sound? come lo hai verificato? cosa dice il teorema che hai usato?").

---

## Sintesi operativa

> [!tip] In una riga per fase
>
> 1. **Teoria** — tutta, con doppia passata sul nucleo formale 08–17.
> 2. **Pratica** — [[22 - Esercizi Guidati]] su carta, mai in lettura passiva.
> 3. **Dimostrazioni + controesempi** — le due checklist, sono le domande più frequenti.
> 4. **Progetto** — solo a teoria finita; 1 settimana piena; ogni membro sa tutto.
> 5. **Simulazione** — raccolta domande ad alta voce + ripasso mirato dei buchi.
