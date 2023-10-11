# WineSelection
> Progetto di Ingegneria della Conoscenza A.A 2022/2023 basato su un sistema di predizione della qualità di un vino e consigliatore di vini, con interfaccia CLI realizzata in Python.

![wines](https://github.com/MarcoLillx/WineSelection/blob/main/Img/wines.jpeg)

### Gruppo di lavoro
- [Michele Fraccalvieri](https://github.com/Citrone16), 724204
- [Marco Lillo](https://github.com/MarcoLillx), 717683

## Istruzioni per l'installazione

Per installare l'ambiente SWI Prolog (versione consigliata: `8.4.2`) clicca [qui](https://www.swi-prolog.org/download/stable?show=all) oppure digita il seguente comando:
- `python -m pip install git+https://github.com/yuce/pyswip@master#egg=pyswip`
Infine, per installare le dipendenze, bisogna posizionarsi all' interno della directory principale e digitare il seguente comando:
- `pip install -r requirements.txt`
Per eseguire il sistema basato su conoscenza digitare `python main.py`.

## Introduzione
|Documento|Link|
|---|---|
|Documentazione relativa al progetto |[pdf](https://github.com/MarcoLillx/WineSelection/blob/main/Doc/WineSelection.pdf)|
|Documentazione relativa ad analisi dei dati e apprendimento (Notebook Jupyter)|[link](https://github.com/MarcoLillx/WineSelection/blob/main/Classification/Classificatore.ipynb)|
|Dataset relativo al sistema di predizione della qualità|[csv](https://github.com/MarcoLillx/WineSelection/blob/main/Dataset/wine_quality.csv)|
|Dataset relativo al sistema di raccomandazione di un vino|[csv](https://github.com/MarcoLillx/WineSelection/blob/main/Dataset/wine_recommend.csv)|

Il dataset relativo al sistema di predizione della qualità di un vino contiene 6463 vini e 13 feature, di cui una sola categorica. Le feature prese in considerazione sono le seguenti:
- **Fixed acidity**:
  - Questo tipo di acido contribuisce all'equilibrio del gusto del vino e conferisce freschezza al sapore.
- **Volatile acidity**
  - Questo tipo di acido può essere percepito attraverso l'olfatto, conferisce al vino un sapore acidulo
- **Citric acid**
 - Può aggiungere “freschezza” e sapore ai vini
- **Residual sugar**
  - Lo zucchero dell'uva che non è stato fermentato in alcool
- **Chlorides**
  - La quantità di sale nel vino
- **Free sulfur dioxide**
  - Previene la crescita microbica e l'ossidazione del vino grazie alle sue proprietà antiossidanti e antimicrobiche.
- **Total sulfur dioxide**
  - Viene aggiunto principalmente per uccidere i batteri nocivi e preservare la qualità e la freschezza
- **Density**
  - La densità del vino può essere inferiore o superiore a quella dell'acqua. Il suo valore è determinato principalmente dalla concentrazione di alcol e zucchero.
- **Sulphates**
  - I solfati sono un risultato naturale della fermentazione da parte del lievito dello zucchero nel vino in alcool.
- **pH**
  - pH è una misura dell'acidità del vino. Tutti i vini idealmente hanno un livello di pH compreso tra 2,9 e 4,2
- **Alcohol**
  - La percentuale alcolica contenuta nel vino. Questo parametro varia da 4,5 a 22 a seconda della categoria.
- **Type**
  - Il tipo del vino (in questo caso bianco o rosso)
- **Quality**
  - Il punteggio assegnato dagli esperti che va da 1 a 10
 
Per quanto riguarda il dataset relativo al sistema di raccomandazione, la nostra Base di Conoscenza presenta 30 vini italiani diversi, ognuno dei quali possiede 7 proprietà con i rispettivi valori.
In cui:
-	**Id** è l’identificatore univoco del vino
-	**Title** è il nome completo del vino (compresa l’annata)
-	**Type** è il colore del vino
-	**Province** è la provincia di provenienza del vino
-	**Price** è il prezzo del vino
-	**Taste** è il sapore del vino
-	**Food** è il cibo con cui il vino si abbina meglio


