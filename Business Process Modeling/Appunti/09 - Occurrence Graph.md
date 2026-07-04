---
tags:
  - università/business-process-modeling
  - petri-nets
  - reachability-graph
  - boundedness
  - coverability
data: 2026-07-03
lezione: "09 — Occurrence graphs"
corso: "MPB (6 cfu, 295AA)"
professore: "Roberto Bruni"
fonte: "Petri nets · Esparza, *Free Choice Petri Nets* (optional)"
---

# Occurrence Graph

In [[08 - Nets Intro]] abbiamo definito l'insieme delle marcature raggiungibili $[M_0\rangle$ di un Petri net: tutti gli stati in cui il processo può finire. Ma un *insieme* di stati non basta per ragionare sul comportamento — vogliamo sapere anche *come* si passa da uno stato all'altro. Questa lezione organizza quegli stati in un **grafo**, l'**occurrence graph**, e lo usa per rispondere a una domanda fondamentale: il processo può accumulare token all'infinito, o resta "limitato"? È la nozione di **boundedness**, e quando il grafo diventa infinito introdurremo un'approssimazione finita, il **coverability graph**.

---

## L'occurrence graph (reachability graph)

L'idea è semplice: prendiamo tutte le marcature raggiungibili come **nodi** e colleghiamole con archi ogni volta che uno scatto porta dall'una all'altra.

> [!definition] Occurrence graph (aka Reachability graph)
>
> L'**occurrence graph** di una rete $N$ con marcatura iniziale $M_0$ è il grafo $OG(N) = ([M_0\rangle, A)$ dove:
> - i **nodi** sono le **marcature raggiungibili** $[M_0\rangle$;
> - gli **archi** sono gli **scatti**: $A \subseteq [M_0\rangle \times T \times [M_0\rangle$ con $(M, t, M') \in A$ se e solo se $M \xrightarrow{t} M'$.
>
> In pratica: un nodo per ogni stato raggiungibile, un arco etichettato $t$ per ogni scatto possibile tra due stati.

Rappresenta **tutte le possibili occurrence sequence** della rete in un colpo solo: ogni cammino nel grafo, a partire da $M_0$, è una sequenza di scatti eseguibile.

### Come si calcola

L'algoritmo è una classica esplorazione a **worklist** (lista di lavoro): si tiene un insieme `Todo` di marcature ancora da esplorare, e si espande finché non è vuoto.

> [!definition] Algoritmo per $OG(N)$
>
> 1. Inizializza `Nodes = {}`, `Arcs = {}`, `Todo = {M0}`.
> 2. Estrai una marcatura $M$ da `Todo`.
> 3. Aggiungila ai `Nodes` (e toglila da `Todo`).
> 4. Calcola tutti gli scatti da $M$: `Firings = {(M, t, M') | M —t→ M'}`.
> 5. Individua le marcature **nuove** (`New`), cioè quelle in `Firings` non ancora in `Nodes` né in `Todo`.
> 6. Aggiungi `New` a `Todo` e `Firings` agli `Arcs`.
> 7. Se `Todo` è vuoto, **stop**; altrimenti torna al passo 2.

### Un esempio: il semaforo

Consideriamo un semaforo modellato come una rete: un solo token che circola tra i place `red`, `green`, `yellow`, con le transizioni `go-green`, `go-yellow`, `go-red`. Poiché c'è **un solo token** e cicla, l'occurrence graph è un semplice ciclo di tre stati.

![A sinistra la rete del semaforo: i place red, yellow, green in colonna, collegati dalle transizioni go-red, go-yellow, go-green, con un token in red. A destra l'occurrence graph: tre nodi red, green, yellow collegati in ciclo dagli archi go-green (red→green), go-yellow (green→yellow), go-red (yellow→red)](assets/09-occurrence_p9_traffic-light.png)
*Fig. — Semaforo singolo. La rete (sinistra) ha un solo token; il suo occurrence graph (destra) è il ciclo `red → green → yellow → red`. Ogni stato è una marcatura con il token in un place.*

### Il product state space: due semafori

La situazione diventa interessante — e mostra la vera natura dei Petri net — con **due semafori indipendenti** che funzionano in parallelo. Ora lo stato è una coppia (un token in ciascun semaforo), e le marcature raggiungibili sono tutte le **combinazioni** dei tre stati di un semaforo con i tre dell'altro: $3 \times 3 = 9$ nodi.

![La rete dei due semafori (in alto a sinistra) e il suo occurrence graph completo: nove nodi corrispondenti a tutte le coppie red/yellow/green × red'/yellow'/green' (red+red', green+red', red+green', yellow+red', green+green', red+yellow', yellow+green', green+yellow', yellow+yellow'), collegati da archi che rappresentano lo scatto indipendente di una delle due transizioni](assets/09-occurrence_p20_two-lights-rg.png)
*Fig. — Due semafori. L'occurrence graph ha **9 stati**, ognuno una marcatura `x + y'` con $x$ stato del primo semaforo e $y'$ del secondo. Da ogni nodo partono due archi (uno per semaforo che avanza): è la **concorrenza** resa esplicita come intreccio di scatti indipendenti. Nota come il numero di stati **cresce moltiplicativamente** col numero di componenti.*

Questo esempio illustra sia il pregio (i Petri net rappresentano la concorrenza in modo compatto: la *rete* dei due semafori è piccola) sia il costo (l'*occurrence graph* esplode: due componenti da 3 stati danno 9 nodi, dieci componenti darebbero $3^{10}$).

---

## Boundedness: il processo può "traboccare"?

Una domanda cruciale per l'analisi: esiste un limite al numero di token che un place può contenere? Se sì, quel place non può "overflow"; se no, il sistema può accumulare risorse senza fine (spesso un bug).

> [!definition] k-boundedness, safe, bounded
>
> - Un place $p$ è **k-bounded** se **nessuna** marcatura raggiungibile ha più di $k$ token in $p$.
> - Una rete è **k-bounded** se tutti i suoi place lo sono ($k$ è allora un limite di capacità imponibile senza rischio di overflow).
> - Un place è **safe** se è **1-bounded** (al più un token); una rete è safe se tutti i suoi place lo sono.
> - Un place è **bounded** se è k-bounded **per qualche** $k$; una rete è **bounded** se tutti i place lo sono, **unbounded** altrimenti (esiste un place in cui può comparire un numero arbitrario di token).

Formalmente, una rete è bounded se:

$$\exists k \in \mathbb{N}.\; \forall M \in [M_0\rangle.\; \forall p \in P.\; M(p) \le k$$

### Il legame con l'occurrence graph

C'è un teorema semplice ma potentissimo che collega una proprietà del *comportamento* (boundedness) a una proprietà del *grafo* (finitezza).

> [!theorem] Boundedness ⟺ finitezza del reachability graph
>
> Una rete è **bounded** se e solo se il suo occurrence graph è **finito**.
>
> *($\Rightarrow$) Bounded implica finito.*
> Se è k-bounded, ogni place ha al più $k$ token; con $n$ place ci sono al più $(k+1)^n$ marcature possibili, quindi un numero finito di nodi.
>
> *($\Leftarrow$) Finito implica bounded.*
> Se il grafo è finito, per ogni nodo $M$ prendiamo $k_M$ = massimo numero di token in uno stesso place.
>
> $$k = \max\{k_M\}$$
>
> Questo massimo esiste perché i nodi sono finiti. Allora la rete è k-bounded. $\blacksquare$

Come conseguenza immediata: **una rete è unbounded se e solo se il suo reachability graph è infinito**. Questo ci dà un metodo per rilevare l'unboundedness — ma anche un problema: se il grafo è infinito, l'algoritmo di prima **non termina**. Serve un'approssimazione finita.

---

## Coverability graph: domare l'infinito

Quando la rete è unbounded, il reachability graph ha infiniti nodi e non lo possiamo costruire. Il **coverability graph** è una sua **sovra-approssimazione finita**: ammette marcature "con infiniti token" in un place, rappresentati dal simbolo $\omega$ (o $\infty$).

> [!definition] Coverability graph
>
> Una sovra-approssimazione **finita** del reachability graph, che ammette marcature con **infiniti token** in un place. I nodi non sono più marcature ordinarie ma **extended bag** $B : P \to \mathbb{N} \cup \{\omega\}$, dove $\omega$ marca un place **illimitato**.

L'idea per scoprire i place illimitati sfrutta la **monotonicità** dei Petri net (se una sequenza è abilitata in una marcatura, lo è anche in una marcatura più grande):

> [!tip] Come si scopre un place unbounded
>
> Supponiamo che lungo il calcolo si trovi $M_0 \xrightarrow{\;\ast\;} M \xrightarrow{\;\ast\;} M'$ con $M \subset M'$ (la seconda marcatura contiene **strettamente** la prima). Sia $L = M' - M$ il "surplus" di token prodotto. Per monotonicità possiamo ripetere la stessa sequenza all'infinito:
> $$M \xrightarrow{\;\ast\;} M+L \xrightarrow{\;\ast\;} M+2L \xrightarrow{\;\ast\;} \cdots \xrightarrow{\;\ast\;} M+nL$$
> Quindi **ogni place $p$ con $L(p) > 0$ è unbounded**: nell'extended bag lo segniamo con $\omega$ al posto del suo valore.

Le operazioni sugli extended bag estendono quelle sui multiset trattando $\omega$ come "assorbente":

$$
\begin{aligned}
\omega + n &= \omega \\
\omega - n &= \omega \\
\omega &\ge n \quad \text{per ogni } n \text{ finito}
\end{aligned}
$$

L'algoritmo del coverability graph è come quello del reachability graph, ma quando crea una nuova marcatura $B'$ controlla se lungo il cammino esiste un antenato $B'' \subset B'$: per ogni place dove $B''(p) < B'(p)$, mette $\omega$.

![Esempio: una rete con place i, p2, p3, o e transizioni t1, t2, t3 in cui t3 produce un token in o e ne rimette uno in p2 (loop), causando l'accumulo illimitato di token in o (marcato ∞). Sotto, il coverability graph: i →t1→ p2 →t2→ p3 →t3→ p2+∞o →t2→ p3+∞o, dove ∞o indica che il place o è unbounded](assets/09-occurrence_p89_coverability.png)
*Fig. — Coverability graph. La rete ha un ciclo che a ogni giro deposita un token in `o` senza mai consumarlo: `o` è **unbounded**, marcato $\infty$. Il grafo resta **finito** grazie a $\omega$: invece di enumerare `o, 2o, 3o, ...` (infiniti nodi) si collassa tutto in `∞o`.*

> [!note] Proprietà del coverability graph
>
> - È **sempre finito**, ma **non unico**: dipende dall'ordine con cui si scelgono $B$ e $t$ nell'algoritmo.
> - Ogni firing sequence ha un cammino corrispondente nel CG (il **viceversa non vale** sempre — il CG è una sovra-approssimazione, può suggerire comportamenti non reali).
> - Ogni cammino nel CG che visita **solo marcature finite** corrisponde a una vera firing sequence.
> - Se il reachability graph è **finito**, allora **coincide** col coverability graph.

In pratica, tutti i comportamenti di un workflow net sono rappresentati **esattamente** nel reachability graph *quando è finito*; si ricorre al coverability graph solo quando serve (RG infinito). Lo strumento **WoPeD**, che useremo, calcola un coverability graph.

Con l'occurrence graph in mano possiamo ora studiare proprietà comportamentali più fini — vivacità, assenza di deadlock — che sono il tema delle prossime lezioni. → [[10 - Liveness]]
