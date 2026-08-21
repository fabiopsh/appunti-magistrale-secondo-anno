Quando qualcosa non è distribuito uniformemente, si divide in bucket con valore equivalente sperando che nel singolo bucket ci sia una sorta di uniformità.
In questo caso calcolare il selectivity factor dei singoli bucket è meglio, perchè saresti meno esposto agli outliers.

Sostanzialmente andiamo a creare una rappresentazione compressa dei dati.
![[Pasted image 20260821143606.png|560]]

Un Histogram deve stare sempre in memoria, quindi è molto costoso.
## Quanto costa implementare un operatore
Si può accedere ad una tabella in tanti modi, un metodo è il table scan e si può usare questo metodo in qualsiasi struttura la tabella abbia.

Un altro operatore è l'index scan operator, quindi si scannerizzano tutti gli indici e per ogni indice si tira fuori l'elemento indicizzato.

