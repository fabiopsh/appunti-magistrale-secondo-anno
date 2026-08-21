## G-Tree
Non. isogna mai salvare dati mutimensionali su un B-Tree ordinandoli lessicograficamente.

Un path è un set di decisioni di movimento, tipo destra,sinistra, sopra e sotto.
![[Pasted image 20260820160338.png|236]]

Poi possiamo salvare in un B+Tree
![[Pasted image 20260820160713.png|500]]


## Architetture

![[Pasted image 20260820163525.png|548]]

I metodi di accesso che abbiamo visto sono heap file scan, questa è una delle implementazioni dell'interfaccia per l'iterator.

Un altro metodo è l'index scan, che ti permette di aprire un index e scannerizzarlo completamente.

Durante la lezione ha fatto vedere le primitive tipo HFS_open e tante altre, per farci capire che ogni metodo ha le sue primitive e vengono usate appunto per implementare l'accesso in quel modo.


Quando eseguo una query SQL, un approccio è il table at a time, ovvero eseguire ogni operazione completamente, ma sicuro il risultato di una singola operazione non riempie la memoria e quindi questo metodo non è ottimale.

![[Pasted image 20260820170552.png|526]]

Poi abbiamo visto il couple at a time, ma non ho ben capito, solo che va bene in alcuni casi mentre l'operator at a time fa schifo e non va usato.

## Implementazione di operazioni
Parte fondamentale del corso.
Gli operatori fisici implementano gli operatori logici come Proiezioni, selection, grouping, set e join.

Calcolare il selectivity factor di una select soffre degli outliers, proprio perchè i dati la maggior parte delle volte non seguono una distribuzione uniforme.

