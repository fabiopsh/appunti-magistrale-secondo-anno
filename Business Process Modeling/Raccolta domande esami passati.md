---
tags:
  - università/business-process-modeling
  - esame
corso: "MPB (6 cfu, 295AA)"
professore: "Roberto Bruni"
nota: "Domande raccolte da testimonianze di studenti di appelli passati, deduplicate e organizzate per argomento. ×N = chiesta N volte in testimonianze diverse (indicatore di frequenza)."
---

# Raccolta domande esami passati

> [!tip] Come leggere questo file
>
> Le domande provengono da tre testimonianze distinte e sono state deduplicate: **×N** indica in quante testimonianze compare la domanda (più è alto, più è probabile che esca). Ogni blocco rimanda alla lezione dove si trova la risposta.

---

## Workflow net e soundness — [[12 - Soundness]]

- **×3 — Le tre condizioni di soundness**, con la loro notazione formale (option to complete, proper completion, no dead transition).
- **×2 — Il main theorem con dimostrazione**: $N$ sound $\iff$ $N^\star$ live e bounded (in particolare la direzione sound $\Rightarrow$ liveness).
- **×2 — Disegna una rete che viola proper completion.**
- **×1 — La short-circuit net $N^\star$**: cos'è e a cosa serve.

## Invarianti — [[14 - Invariants]]

- **×3 — S-invariant**: definizione, scrittura matematica ($I \cdot \mathbf{N} = 0$... attenzione alla convenzione delle slide), cosa rappresenta, e i **due teoremi** (in particolare: S-invariant positive $\Rightarrow$ boundedness).
- **×2 — Proprietà fondamentale degli S-invariant, con dimostrazione** ($I \cdot M = I \cdot M_0$ per ogni $M$ raggiungibile).

## Liveness e boundedness — [[10 - Liveness]]

- **×2 — Boundedness**: definizione, notazione matematica, legame con gli S-invariant.
- **×1 — Tutto su liveness**: definizione, notazione, place-live, non-live, e i legami con S-net, T-net e free-choice net.
- **×1 — Disegna una rete deadlock-free ma non live.**
- **×1 — Disegna una rete non bounded.**

## Matrici e marking equation — [[11 - Net Matrices]]

- **×2 — Marking equation lemma, con dimostrazione.**
- **×1 — Matrice di incidenza**: cosa rappresentano righe e colonne, quali sono i valori possibili.
- **×1 — Parikh vector**: cos'è.

## Free-choice net — [[17 - Free Choice]]

- **×2 — Rank theorem**: tutte le condizioni + l'algoritmo per verificare il punto sul rank.
- **×1 — Tutto sulle free-choice net**: definizione, Commoner's theorem (siphon/trap).
- **×1 — Algoritmo per trovare il massimo siphon non marcato.**

## S-system e T-system — [[15 - S-T Systems]]

- **×1 — S-net: proprietà fondamentale degli S-system** (conservazione dei token).
- **×1 — Cosa si può dire su boundedness/liveness degli S-system.**

## S-coverability — [[21 - WFnets Diagnosis]]

- **×1 — S-coverability**: definizione e relazione con S-net, liveness e boundedness.

## Grafi di raggiungibilità — [[09 - Occurrence Graph]]

- **×1 — Differenza tra reachability graph e coverability graph.**

## EPC vs BPMN — [[07a - EPC e BPMN]], [[16b - BPMN Analysis]]

- **×2 — Differenza tra BPMN ed EPC, disegnandone la notazione.**

## Process mining e conformance — [[05 - Process Mining]], [[19 - Conformance]]

- **×2 — Footprint matrix / notazione footprint.**
- **×2 — Alpha algorithm**: descriverne i passi.

## Analisi quantitativa — [[20 - Quantitative Analysis]]

- **×2 — Little's Law.**
- **×2 — Cycle Time Efficiency**: definizione e in quale intervallo varia ($[0,1]$).

---

> [!warning] Domande ambigue nella trascrizione originale
>
> - *"What is the name theorem?"* — quasi certamente una trascrizione confusa di *"main theorem"* (soundness $\iff$ liveness + boundedness di $N^\star$), già coperto sopra.
> - *"Draw a net that is deadlock free but live"* — quasi certamente un refuso per *deadlock-free ma **non** live* (una rete live è per definizione deadlock-free, quindi la domanda com'era scritta sarebbe banale).
