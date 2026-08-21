Abbiamo parlato dell'indice combinato, i dati non sono ordinati su un singolo elemento ma vengono ordinati lessicograficamente su due attributi, ovvero che quando sono uguali sul primo attributo vengono ordinati sul secondo attributo.
Quindi nell'indice combinato le liste sono più piccole.

Sono abbastanza buone per rispondere ad alcune query combinate, ma non su tutte.

![[Pasted image 20260819154858.png|449]]

Quindi sono buoni quando la query è equality nel primo index e qualsiasi altra cosa nel secondo index, oppure semplicemente qualsiasi cosa nel primo index.

## Il bitmap index
Il bitmap index è molto usato, al posto di salvare un indice per ogni record, ma un bit per ogni record per quel determinato file.
![[Pasted image 20260819155133.png|367]]

Se devo combinare due cose, basta fare un and del bitmap e tutte le operazioni simili.
Sono estremamente efficienti.

Il problema è che molto spesso occupano molto spazio.

Poi bisogna considerare il compromesso tra inverted indexes e bitmap
![[Pasted image 20260819155705.png|509]]

Un trick che si può usare è quello di salvare la bitmap compressa, usando il run lenght encoding, dove si sostituisce ogni sequenza di valori uguali con il numero di volte in cui appaiono.
