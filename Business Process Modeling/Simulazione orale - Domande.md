---
tags:
  - università/business-process-modeling
  - esame
  - simulazione
data: 2026-07-10
corso: "MPB (6 cfu, 295AA)"
professore: "Roberto Bruni"
fonte: "Domande formulate a partire da quattro testimonianze di appelli passati ([[Raccolta domande esami passati]]) + estensioni plausibili sul resto del programma"
---

# Simulazione orale — Domande

Le domande della [[Raccolta domande esami passati]] sono "argomenti secchi": qui ognuna è **formulata come la porrebbe il prof**, con i probabili **incalzi** (le domande a catena che seguono la prima risposta). Le risposte pronte sono in [[Raccolta risposte esami passati]]; per gli argomenti nuovi rimandano alla lezione.

> [!tip] Legenda e metodo
>
> - 🔥 = domanda **documentata** negli appelli passati (col suo ×N di frequenza) — priorità assoluta.
> - ○ = domanda **plausibile**: mai testimoniata, ma le FAQ dicono che l'orale copre *tutti* gli argomenti del corso.
> - Gli **incalzi** (→) sono il vero test: il prof parte largo e stringe. Allenati a rispondere alla prima domanda *e poi* a reggere la catena.
> - Simulazione consigliata: fatti leggere la domanda ad alta voce da qualcuno (o leggila e copri il resto), rispondi parlando, *poi* confronta con [[Raccolta risposte esami passati]].

---

## 1. Reti di Petri: fondamenti

○ **«Mi dia la definizione formale di Petri net, e mi spieghi come funziona la regola di scatto.»**
→ *Quand'è che una transizione è abilitata?* → *Cosa succede se un place è input di due transizioni abilitate?* (conflitto/scelta) → *E se una transizione è un AND-split, quanti token produce?*

○ **«Cosa sono il pre-set e il post-set di un nodo? Me li scriva in notazione.»**
→ *E per un insieme di place $R$, cosa indicano $\bullet R$ e $R\bullet$?* (serve per siphon/trap)

○ **«Che cos'è un workflow net? Quali condizioni deve rispettare la sua struttura?»**
→ *Perché la definizione è puramente strutturale? Cosa non riesce a catturare?* → *Con quale marcatura iniziale si studia?*

---

## 2. Reachability graph, coverability, boundedness

🔥×1 **«Che differenza c'è fra reachability graph e coverability graph? Quando servono l'uno e l'altro?»**
→ *Il coverability graph è unico?* → *Un cammino nel coverability graph corrisponde sempre a una firing sequence reale?* → *Quando i due grafi coincidono?*

🔥×2 **«Mi definisca la boundedness. Me la scriva anche in formula.»**
→ *Che relazione c'è fra boundedness e finitezza del reachability graph? Me lo dimostri.* → *E il legame con gli S-invariant?* → *Cosa vuol dire "safe"?*

🔥×1 **«Mi disegni una rete non bounded, e mi spieghi perché non lo è.»**
→ *Come lo dimostrerebbe algebricamente, senza costruire il grafo?* (marcatura raggiungibile $M \supset M_0$ + monotonicità)

○ **«Come si costruisce il reachability graph? Mi descriva l'algoritmo.»**
→ *Quando termina?* → *Come si accorge il coverability graph che un place è illimitato?* (antenato $M \subset M'$, simbolo $\omega$)

---

## 3. Liveness

🔥×2 **«Mi parli di liveness e place-liveness: definizioni, e che relazione c'è fra le due.»**
→ *La scriva in formula: dove sono i quantificatori?* → *"Live" e "scatta almeno una volta" sono la stessa cosa?* (no: non-dead vs live) → *L'implicazione live ⟹ place-live si inverte?* (no in generale) → ***In quale classe di reti vale l'equivalenza?*** (free-choice — l'incalzo documentato)

🔥×1 **«Mi disegni una rete deadlock-free ma non live.»**
→ *Mi indichi la transizione non-live e la marcatura che la "uccide".* → *Perché deadlock-freedom è più debole della liveness?*

○ **«Cosa significa che una transizione è dead? E non-live? Che legame c'è fra le due nozioni?»**
→ *Come si verifica la deadness sull'occurrence graph?* → *L'insieme dei nodi dead può diminuire durante l'esecuzione?* (no, solo crescere)

---

## 4. Matrici, marking equation, Parikh vector

🔥×1 **«Mi definisca la matrice di incidenza: cosa rappresentano righe e colonne, e quali valori può contenere.»**
→ *Perché il valore è 0 sia per i nodi scollegati sia per i self-loop? Che informazione si perde?* → *Cosa rappresenta una colonna della matrice?*

🔥×1 **«Che cos'è il Parikh vector di una sequenza?»**
→ *Cosa "dimentica" il Parikh vector, e perché va bene così?*

🔥×3 **«Mi enunci e dimostri il marking equation lemma.»**
→ *La dimostrazione è per induzione su cosa?* → *Il lemma dà una condizione necessaria o sufficiente per la raggiungibilità?* → *Se il calcolo $M + \mathbf{N}\vec{\sigma}$ dà un valore negativo, cosa concludo? E se dà tutti valori positivi?*

○ **«Mi enunci il monotonicity lemma e mi dica a cosa serve.»**
→ *Da questo seguono ripetibilità e boundedness lemma: me li racconti.* → *Quando una sequenza è ripetibile all'infinito?* ($M \subseteq M'$)

---

## 5. Invarianti

🔥×4 **«Mi parli degli S-invariant: la definizione, e cosa rappresentano intuitivamente.»**
→ ***Esiste anche una definizione alternativa, leggibile direttamente sul disegno: me la dica.*** (somma pesata in = out per ogni transizione — incalzo documentato) → *Che struttura ha l'insieme delle soluzioni?* (spazio vettoriale) → *Cosa sono semi-positive, positive, support?*

🔥×3 **«Mi enunci e dimostri la proprietà fondamentale degli S-invariant.»**
→ *Quale lemma usa la dimostrazione?* (marking equation) → *Vale per ogni marcatura o solo per quelle raggiungibili?*

🔥×4 **«Che relazione c'è fra S-invariant e boundedness?»**
→ *Mi ricavi il limite esplicito sul numero di token di un place.* → *È un'equivalenza? Se non trovo un S-invariant positive posso concludere che la rete è unbounded?* (no) → *E come si usano gli S-invariant per disprovare liveness o raggiungibilità?*

○ **«E i T-invariant? Definizione e proprietà fondamentale.»**
→ *Cosa rappresenta un T-invariant, intuitivamente?* (un insieme di scatti che torna al punto di partenza) → *Che legame c'è fra T-invariant positive, liveness e boundedness?* (pigeonhole: live+bounded ⟹ T-inv positive)

---

## 6. S-system e T-system

🔥×1 **«Cos'è un S-net? Mi enunci la proprietà fondamentale degli S-system.»**
→ *Me la dimostri.* (una riga: $-1+1$) → *Quali sono gli S-invariant di un S-net connesso?* (uniformi)

🔥×1 **«Cosa si può dire su boundedness e liveness degli S-system?»**
→ *La caratterizzazione della liveness è comportamentale o strutturale?* → *E la raggiungibilità?* (basta contare i token, se live) → ***Cosa concludo se un workflow net è un S-net?*** (safe e sound, gratis)

○ **«Mi racconti il duale: T-system. Cosa si conserva, e quando sono live?»**
→ *Perché un circuito vuoto resta vuoto?* → *Un workflow net può essere un T-net?* (no, ma $N^\star$ sì)

---

## 7. Free-choice, siphon/trap, Commoner, Rank Theorem

🔥×1 **«Mi definisca i free-choice net. Perché si chiamano così?»**
→ *Mi faccia un esempio di rete NON free-choice.* → *S-net e T-net sono free-choice?* → *Se $N$ è free-choice, $N^\star$ lo è ancora?*

🔥×1 **«Cosa sono siphon e trap? Mi dica le proprietà fondamentali.»**
→ *Le scriva in notazione: quale inclusione definisce il siphon, quale il trap?* → *Cosa significa "proper"?* → *Se il sistema è live, cosa posso dire sui proper siphon?* (in ogni rete: marcati)

🔥×1 **«Mi enunci il teorema di Commoner.»**
→ *Il trap dev'essere marcato quando?* (inizialmente) → *Perché conviene guardare il trap massimale?* (unico, calcolabile) → *Il teorema vale per reti qualsiasi?* (no, solo free-choice; in generale vale solo un verso)

🔥×1 **«Come si trova il massimo siphon non marcato? Mi descriva l'algoritmo.»**
→ *Che complessità ha?* → *A quale condizione del Rank Theorem serve?*

🔥×2 **«Mi enunci il Rank Theorem: tutte le condizioni.»**
→ *Cosa sono i cluster, e come si costruiscono?* → *Perché il teorema è importante dal punto di vista della complessità?* → ***Quindi: liveness da sola vs liveness+boundedness sui free-choice — quale è più facile da decidere?*** (il paradosso: aggiungere un vincolo semplifica) → *Come si collega alla soundness dei workflow net?* (poly per WF net free-choice → perché WoPeD funziona)

○ **«Perché la sola liveness dei free-choice è NP-complete? Mi racconti l'idea della riduzione.»**
→ *Da quale problema si riduce?* (CNF-SAT) → *Cosa corrisponde a "scegliere un'assegnazione" nel net?* (la scelta free-choice sui place delle variabili)

---

## 8. Workflow net e soundness

🔥×3 **«Quando diciamo che un workflow net è sound? Mi dia le tre condizioni, anche in notazione.»**
→ *Ogni condizione vieta un difetto tipico: quale?* → *L'option to complete vieta i cicli infiniti?* (no: chiede solo che l'uscita resti raggiungibile, con fairness) → *Come si verificherebbe la soundness a forza bruta sul reachability graph?*

🔥×1 **«Cos'è la rete $N^\star$? Perché la introduciamo?»**
→ *Cosa cambia strutturalmente aggiungendo reset?* (strong connectedness) → *Che ruolo ha nel teorema principale?*

🔥×3 **«Mi enunci il main theorem e me lo dimostri.»**
→ *Mi leghi ciascuna delle due proprietà di $N^\star$ alle tre condizioni di soundness.* → ***La direzione "sound ⟹ $N^\star$ bounded": me la dimostri per assurdo.*** (surplus $L$, monotonicità, $o+L$) → *Quali lemmi algebrici usa la dimostrazione?*

🔥×3 **«Mi disegni una rete che non ha dead task, ha l'option to complete, ma non ha la proper completion.»**
→ *Mi indichi la marcatura che viola la condizione.* → *Come la riparerebbe?* (AND-join prima di $o$) → *(Variante) E una che viola l'option to complete ma non le altre?*

○ **«Che relazione c'è fra strong connectedness, liveness e boundedness?»**
→ *Come lo uso come test rapido per escludere la soundness?* (weakly ma non strongly connected ⟹ non live+bounded)

○ **«Come si costruiscono workflow net sound per costruzione?»** ([[13 - WFnets Construction]])
→ *Quali operazioni di composizione preservano la soundness?*

---

## 9. Diagnosi dei workflow net

🔥×1 **«Mi parli di S-coverability: cos'è un S-component, cos'è un S-cover.»**
→ *Quale condizione "in più" serve oltre a essere un S-net strongly connected?* (se prendi un place, prendi tutte le sue transizioni) → *Che legame c'è con gli S-invariant positive?* (somma degli uniformi) → *Mi enunci i due S-coverability theorem, e come si usano in contronominale come test di non-soundness.* → *Su quale rete lavora WoPeD, $N$ o $N^\star$?*

○ **«Cosa sono TP-handle e PT-handle? A quale difetto di progettazione corrispondono?»**
→ *Quale dei due porta a token multipli e quale al deadlock?* (TP = AND-split→XOR-join, token multipli; PT = XOR-split→AND-join, deadlock) → *Cosa vuol dire well-structured?*

○ **«Cosa sono le error sequence? Perché non basta sapere quali place sono unbounded?»**
→ *Come si colorano gli stati del reachability graph per trovare le non-live sequence?* (verde/giallo/rosso) → *E per le unbounded sequence, su quale grafo si lavora?* (coverability, versione restricted) → *Perché conviene il Restricted Coverability Graph?*

---

## 10. EPC

🔥×1 **«Mi disegni i simboli dell'EPC e mi dica le regole di buona formazione — sia quelle obbligatorie sia le linee guida.»**
→ *Quanti archi può avere un evento? E una funzione? E un connettore?* → *Perché le linee guida più stringenti (start unico, alternanza rigida) in pratica si rilassano?* → *Che semantica hanno start multipli?* (XOR-split implicito)

🔥×1 **«Esistono tre modi di tradurre un EPC in Petri net: me li racconti, con pregi e difetti.»**
→ *(1° - diretta)*: *perché il risultato è quasi sempre non sound?* (gli OR) → *cosa si fa allora?* (relaxed soundness) → *(2° - EPC semplificati)*: *a cosa si rinuncia e cosa si guadagna?* (niente OR → traduzione context-dependent → **free-choice net**) → *(3° - EPC decorati)*: *cosa deve aggiungere il progettista?* → *la decorazione garantisce la soundness?* (no: rende l'analisi accurata) → *Qual è il trade-off di fondo fra i tre?* (libertà vs analizzabilità)

○ **«Cos'è la relaxed soundness?»** ([[16a - EPC Analysis]])
→ *In cosa è più debole della soundness?* → *Perché è la nozione giusta per il primo approccio di traduzione?*

○ **«Perché l'OR-join è così problematico?»**
→ *Cosa vuol dire che la sua semantica è non-locale?* → *Quali policy si usano per disambiguarlo?* (wait-for-all se matching, every-time, first-come) → *Cos'è un matching split?*

---

## 11. BPMN

🔥×2 **«Mi metta a confronto BPMN ed EPC: elementi, notazione, differenze.»**
→ *Mi disegni i simboli principali di entrambe.* → *Cosa distingue sequence flow e message flow?* (EPC non ha il secondo) → *Come si riconoscono start, intermediate ed end event in BPMN?* (il bordo)

○ **«Come si traduce un diagramma BPMN in workflow net?»** ([[16b - BPMN Analysis]])
→ *Qual è il "twist" rispetto alla traduzione EPC?* (evento+attività → transizione, flussi → place) → *La composizione di due processi sound è sound?* (no — esempio Buyer/Reseller)

○ **«Cosa sono pool e lane? Come comunicano due pool?»**
→ *Cosa significa collapsed pool?* → *Cosa fa un event-based gateway?* (scelta deferred: instrada sul primo evento che accade)

---

## 12. Workflow system e composizione

○ **«Cos'è un workflow module? E un workflow system?»** ([[18 - Workflow Systems]])
→ *Cosa sono i place di interfaccia $P_I$ e $P_O$?* → *Quando due moduli sono strutturalmente compatibili?* → *Sound + sound = sound?* (no) → *Cos'è la weak soundness, e perché per i sistemi composti ci si accontenta?*

---

## 13. Process mining

🔥×3 **«Mi parli della footprint matrix: da cosa si parte e cosa contiene.»**
→ *Mi definisca le quattro relazioni: directly-follows, causality, exclusion, concurrency.* → *Che simmetrie ha la matrice?* → *Come distinguo dal log se due attività sono in parallelo o in alternativa?*

🔥×3 **«Mi descriva l'α-algorithm, passo per passo.»**
→ *Qual è il cuore dell'algoritmo?* (passi 4-5: coppie causali massimali → place) → *Perché si tengono solo le coppie massimali?* → *Quali sono i suoi limiti?* (dipendenze non-locali, short loop, noise)

○ **«Quali sono i tre tipi di process mining?»**
→ *Che differenza c'è fra discovery e conformance?* → *Nell'enhancement, chi ha "torto" quando modello e log divergono?* (dipende: descrittivo vs normativo)

○ **«Quali criteri misurano la qualità di un modello scoperto?»**
→ *Cos'è la flower net e quale criterio massimizza/annulla?* (fitness perfetta, precision nulla) → *Overfitting e underfitting nei modelli di processo?*

---

## 14. Conformance

○ **«Come funziona il token replay? E come si calcola la fitness?»** ([[19 - Conformance]])
→ *Cosa contano i quattro contatori p, c, m, r?* → *Mi scriva la formula della fitness e mi dica perché ha due metà.* → *Una fitness pari a 1 garantisce che il modello sia "giusto"?* (no: la flower net ha fitness 1) → *E la conformance basata sui footprint, come funziona?*

---

## 15. Analisi quantitativa

🔥×2 **«Mi enunci la legge di Little e mi spieghi perché è così utile in pratica.»**
→ *Cosa serve assumere?* (sistema stabile) → *Mi faccia un esempio numerico.* → *Se il tasso di arrivo cresce e non voglio più WIP, che leva mi resta?*

🔥×2 **«Cos'è la Cycle Time Efficiency? In che intervallo varia?»**
→ *Come si calcola il theoretical cycle time?* → *Cosa mi dice una CTE vicina a 0? E vicina a 1?*

○ **«Mi dia le formule del cycle time per i quattro pattern: sequenza, XOR, AND, rework.»**
→ *Perché nell'AND-block si prende il massimo e non la somma?* → *Mi ricavi la formula del rework $CT_P/(1-r)$.* (serie geometrica) → *E la variante "0 o più volte"?* → *Per il costo cambia qualcosa?* (sì: nell'AND i costi si sommano) → *Quali sono i limiti della flow analysis?* (block-structured, medie statiche, niente carico)

---

## 16. Complessità (17aux)

○ **«Cosa vuol dire che un problema è in P? E in NP? E NP-completo?»**
→ *Mi faccia un esempio di problema del corso in ciascuna classe.* (liveness+boundedness FC = poly; liveness FC = NP-completo; raggiungibilità generale = EXPSPACE-hard) → *Cos'è SAT e che ruolo ha?*

---

## 17. Esercizi lampo alla lavagna (raccolta)

Tutte le richieste "mi disegni..." documentate o plausibili, da saper fare **in 30 secondi**:

- 🔥 una rete **non bounded**;
- 🔥 una rete **deadlock-free ma non live**;
- 🔥 una rete **senza dead task, con option to complete, senza proper completion**;
- ○ una WF-net che **viola l'option to complete** (XOR-split → AND-join);
- ○ una rete **non free-choice** minima (due transizioni con pre-set che si intersecano senza coincidere);
- ○ un **siphon che non è un trap** (e viceversa);
- ○ i **simboli** EPC e BPMN affiancati;
- ○ la **$N^\star$** di un workflow net dato.

I disegni pronti (Mermaid) sono in [[Raccolta risposte esami passati]] e in [[22 - Esercizi Guidati]].

---

> [!abstract] Come chiude il prof
>
> Ricorda che la prima parte dell'orale è la **discussione del progetto**: molte di queste domande possono arrivare *agganciate* al tuo modello («Questa sua rete è free-choice? Come ha verificato la soundness? Cosa le ha risposto WoPeD e perché?»). Preparati a rispondere alle domande teoriche **sul tuo progetto**, non solo in astratto.
