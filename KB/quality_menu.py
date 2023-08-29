import prolog_quality as pq


def menu():
    while True:
        print("\n# ---- Quality prediction menu ---- #"
              + "\n1 -- Visualize all wine compositions"
              + "\n2 -- Add new wine"
              + "\n3 -- Quality prediction"
              + "\n4 -- Information/Help"
              + "\n5 -- Return to main menu")

        user_input = input("\nEnter a number: ")

        wines = pq.getWines()
        initialization(wines)

        if user_input == '1':
            pq.printWines(wines)

        elif user_input == '2':
            addMenu()

        elif user_input == '3':
            classificationMenu()

        elif user_input == '4':
            qualityHelp()

        elif user_input == '5':
            return

        else:
            print("\n [!] I don't know this command!")


def initialization(wines):
    pq.listProp(wines)
    pq.learn()


def addMenu():
    valueList = []

    wine = input("\nEnter the name of the wine to add to the Knowledge Base [without spaces]:\n> ").lower()

    (fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfur_dioxide,
     sulphates, alcohol, color) = inputExample()
    valueList.extend([wine, fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides,
                      free_sulfur_dioxide, total_sulfur_dioxide, sulphates, alcohol, color, ""])

    featureDict = pq.createDict(valueList)

    response = input("\nDo you know how's the quality of this wine?[y/n]:\n> ")

    if response == "y":
        user_input = int(input("\nEnter the quality value[from 1 to 10]:\n> "))
        quality = classifyInput(user_input)

    elif response == "n":
        fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol = pq.classifyValues(featureDict)
        example = ("[fixAcid_class = " + fixAcid + ", volAcid_class = " + volAcid + ", citAcid_class = " + citAcid
                   + ",  rSugar_class = " + rSugar + ", chlorides_class = " + chlorides + ", freeSulf_class = "
                   + freeSulf + ", totSulf_class = " + totSulf + ", sulphates_class = " + sulphates
                   + ", alcohol_class = " + alcohol + ", color_class = " + color + "]")
        quality = pq.classifyExample(example)
    else:
        print("Wrong command!")
        return

    print("Quality: " + quality)
    valueList.pop()
    valueList.append(quality)
    pq.addWine(wine, valueList)

    print("\nWine added!")


def classifyInput(quality):
    if quality < 6:
        return "bad"
    else:
        return "good"


def classificationMenu():

    user_inputs = classInput()

    fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol = pq.classifyValues(user_inputs)

    example = ("[fixAcid_class = " + fixAcid + ", volAcid_class = " + volAcid + ", citAcid_class = " + citAcid
               + ", rSugar_class = " + rSugar + ", chlorides_class = " + chlorides + ", freeSulf_class = " + freeSulf
               + ", totSulf_class = " + totSulf + ", sulphates_class = " + sulphates + ", alcohol_class = " + alcohol
               + ", color_class = " + user_inputs["color"] + "]")
    pq.classifyExample(example)


def classInput():
    values = []

    fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfur_dioxide, sulphates, alcohol, color = inputExample()

    values.extend(
        ["", fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides,
         free_sulfur_dioxide, total_sulfur_dioxide, sulphates, alcohol, color, ""])
    user_inputs = pq.createDict(values)

    return user_inputs


def inputExample():
    fixed_acidity = input("\nEnter fixed acidity [> 0]: ", )
    volatile_acidity = input("Enter volatile acidity [> 0]: ", )
    citric_acid = input("Enter citric acid [>= 0]: ", )
    residual_sugar = input("Enter residual sugar [> 0]: ", )
    chlorides = input("Enter chlorides [> 0]: ", )
    fs_dioxide = input("Enter free sulfur dioxide [> 0]: ", )
    ts_dioxide = input("Enter total sulfur dioxide [> 0]: ", )
    sulphates = input("Enter sulphates [> 0]: ", )
    alcohol = input("Enter alcohol [> 0]: ", )
    color = input("Enter color [red/white]: ")

    return fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, fs_dioxide, ts_dioxide, sulphates, alcohol, color


def qualityHelp():
    print("\n # ----------------- Quality prediction manual ----------------- #"
          + "\n\n [Fixed Acidity]"
          + "\n Fixed acids include tartaric, malic, citric, and succinic acids which are found in grapes "
          + "\n (except succinic)."
          + "\n This variable is usually expressed in  g(tartaricacid)/dm3 in the dataset."
          + "\n\n [Volatile Acidity]"
          + "\n These acids are to be distilled out from the wine before completing the production process. "
          + "\n It is primarily constituted of acetic acid though other acids like lactic, formic and butyric acids "
          + "\n might also be present. Excess of volatile acids are undesirable and lead to unpleasant flavor."
          + "\n The volatile acidity is expressed in  g(aceticacid)/dm3 in the dataset."
          + "\n\n [Citric Acid]"
          + "\n This is one of the fixed acids which gives a wine its freshness. Usually most of it is consumed "
          + "\n during the fermentation process and sometimes it is added separately to give the wine more freshness."
          + "\n It's usually expressed in  g/dm3 in the dataset."
          + "\n\n [Residual Sugar]"
          + "\n This typically refers to the natural sugar from grapes which remains after the fermentation "
          + "\n process stops, or is stopped. "
          + "\n It's usually expressed in  g/dm3 in the dataset."
          + "\n\n [Chlorides]"
          + "\n Chloride concentration in the wine is influenced by terroir and its highest levels are found "
          + "\n in wines coming from countries where irrigation is carried out using salty water or in areas "
          + "\n with brackish terrains. This is usually a major contributor to saltiness in wine. "
          + "\n It's usually expressed in  g(sodiumchloride)/dm3 in the dataset."
          + "\n\n [Free Sulfur Dioxide]"
          + "\n This is the part of the sulphur dioxide that when added to a wine is said to be free after the "
          + "\n remaining part binds. Winemakers will always try to get the highest proportion of free sulphur to bind."
          + "\n They are also known as sulfites and too much of it is undesirable and gives a pungent odour. "
          + "\n This variable is expressed in  mg/dm3 in the dataset."
          + "\n\n [Total Sulfur Dioxide]"
          + "\n This is the sum total of the bound and the free sulfur dioxide."
          + "\n This is mainly added to kill harmful bacteria and preserve quality and freshness. "
          + "\n There are usually legal limits for sulfur levels in wines and excess of it can even kill"
          + "\n good yeast and give out undesirable odour. Here, it's expressed in  mg/dm3. "
          + "\n\n [Sulphates]"
          + "\n These are mineral salts containing sulfur. Sulphates are to wine as gluten is to food. "
          + "\n They are a regular part of the winemaking around the world and are considered essential."
          + "\n They are connected to the fermentation process and affects the wine aroma and flavor. "
          + "\n Here, it's usually expressed in  g(potassiumsulphate)/dm3 in the dataset."
          + "\n\n [Alcohol]"
          + "\n It's usually measured in % vol or alcohol by volume (ABV).."
          + "\n\n [Color]"
          + "\n A wine can either be a 'red' or a 'white' wine."
          + "\n\n [Quality]"
          + "\n Wine experts graded the wine quality between 0 (very bad) and 10 (very excellent)"
          + "\n Wines with a quality score of 5 or less are considered bad quality."
          + "\n Wines with a quality score of 6 or more are considered good quality.")
