from pyswip import Prolog

prolog = Prolog()
prolog.consult("wine_quality.pl")


# funzione per richiamare la query prolog che restituisce tutti i vini
def getWines():
    myQuery = "prop(P, wineid, _)."
    wines = list(prolog.query(myQuery))
    return wines


# funzione che stampa tutti i vini
def printWines(wines):
    print("\nList of all the wines:")
    for elem in wines:
        queryWines = elem["P"] + " > " + ""
        features = printFeatures(str(elem["P"]))
        print(queryWines + features)


def printFeatures(wine):
    features = getFeatures()
    values = []

    for f in features:
        myQuery = "prop(" + wine + ", " + f + ", V)."
        result = prolog.query(myQuery)
        for elem in result:
            values.append(str(elem["V"]))

    featuresDict = {"Fixed Acidity": values[1], "Volatile Acidity": values[2],
                    "Citric Acidity": values[3],
                    "Residual Sugar": values[4],
                    "Chlorides": values[5], "Free Sulfur Dioxide": values[6],
                    "Total Sulfur Dioxide": values[7], "Sulphates": values[8], "Alcohol": values[9],
                    "Color": values[10],
                    "Quality": values[11]}

    return str(featuresDict)


# funzione che permette di aggiungere un vino
def addWine(wine, valueList):
    features = getFeatures()

    for value, verb in zip(valueList, features):  # prende entrambi i valori
        print(value, verb)
        myQuery = "prop(" + wine + ", " + verb + ", " + value + ")"

        prolog.assertz(myQuery)


def learn():
    myQuery = "apprendi(good)"
    list(prolog.query(myQuery))

    myQuery = "apprendi(bad)"
    list(prolog.query(myQuery))


# funzione per richiamare la classificazione tramite algoritmo ILP (inductive logic programming)
def classify(example):
    result = ""
    myQuery = "classifica(" + example + ", Classe)"
    prolog.query(myQuery)
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["Classe"]

    if result == "":
        return "undefined: cannot predict the quality of this wine's compositions"

    return result


# funzione per richiamare una classificazione per feature
def getFixAcidClass(fixAcid):
    myQuery = "prop(" + fixAcid + ", fa_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getVolAcidClass(volAcid):
    myQuery = "prop(" + volAcid + ", va_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getCitAcidClass(citAcid):
    myQuery = "prop(" + citAcid + ", ca_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getRSugarClass(rSugar):
    myQuery = "prop(" + rSugar + ", rs_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getChloridesClass(chlorides):
    myQuery = "prop(" + chlorides + ", cl_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getFreeSulfClass(freeSulf):
    myQuery = "prop(" + freeSulf + ", fs_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getTotSulfClass(totSulf):
    myQuery = "prop(" + totSulf + ", ts_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getSulphatesClass(sulphates):
    myQuery = "prop(" + sulphates + ", s_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione per richiamare una classificazione per feature
def getAlcoholClass(alcohol):
    myQuery = "prop(" + alcohol + ", a_class, C)"
    resultQuery = list(prolog.query(myQuery))
    for elem in resultQuery:
        result = elem["C"]

        return result


# funzione che restituisce una lista di tutte le feature
def getFeatures():
    features = ["wineid", "fixed_acidity", "volatile_acidity", "citric_acid", "residual_sugar", "chlorides",
                "free_sulfur_dioxide", "total_sulfur_dioxide", "sulphates",
                "alcohol", "color", "quality"]

    return features


def classifyValues(featureDict):
    fixAcid = getFixAcidClass(featureDict["fixAcid"])
    volAcid = getVolAcidClass(featureDict["volAcid"])
    citAcid = getCitAcidClass(featureDict["citAcid"])
    rSugar = getRSugarClass(featureDict["rSugar"])
    chlorides = getChloridesClass(featureDict["chlorides"])
    freeSulf = getFreeSulfClass(featureDict["freeSulf"])
    totSulf = getTotSulfClass(featureDict["totSulf"])
    sulphates = getSulphatesClass(featureDict["sulphates"])
    alcohol = getAlcoholClass(featureDict["alcohol"])

    return fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol


def classifyExample(example):
    resultClass = classify(example)
    print("\nThe wine entered belongs to the class: " + resultClass)

    return resultClass


# funzione che prende tutti i valori di tutti i vini per ogni feature
def listProp(wineList):
    features = getFeatures()

    # non creo manualmente lista dei vini perchè è una lista non statica, se ne possono aggiungere altri
    wines = []  # lista dei vini creata a partire dal risultato (wineList) di una query precedente
    for elem in wineList:
        wines.append(elem["P"])

    # per ogni vino e per ogni feature cerco il valore corrispondente
    for p in wines:
        values = []  # lista dei valori
        for f in features:
            myQuery = "prop(" + p + "," + f + ", V)."
            resultQuery = prolog.query(myQuery)
            for elem in resultQuery:
                values.append(str(elem["V"]))  # aggiungo man mano i valori alla lista in formato stringa

        # print("\nvalues for: ", p, "= ", values)
        featureDict = createDict(values)
        transform(featureDict)


# creo dizionario per accedere più semplicemente ai dati e rendere più leggibile il programma
def createDict(values):
    featureDict = {"wineName": values[0], "fixAcid": values[1], "volAcid": values[2], "citAcid": values[3],
                   "rSugar": values[4], "chlorides": values[5], "freeSulf": values[6], "totSulf": values[7],
                   "sulphates": values[8], "alcohol": values[9], "color": values[10], "quality": values[11]}

    return featureDict


# funzione che trasforma in notazione "esempio(C,O)" tutti i fatti presenti
def transform(featureDict):
    fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol = classifyValues(featureDict)
    exampleFact = "esempio(" + featureDict["quality"] + ", [fixAcid_class = " + fixAcid + ", volAcid_class = " + volAcid + ", citAcid_class = " + citAcid + ", rSugar_class = " + rSugar + ", chlorides_class = " + chlorides + ", freeSulf_class = " + freeSulf + ", totSulf_class = " + totSulf + ", sulphates_class = " + sulphates + ", alcohol_class = " + alcohol + ", color_class = " + featureDict["color"] + "])"

    prolog.assertz(exampleFact)
