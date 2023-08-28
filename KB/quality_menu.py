import prolog as pl


def menu():
    while True:
        print("\n# ---- Quality prediction menu ---- #"
              + "\n1 -- Visualize all wine compositions"
              + "\n2 -- Add new wine"
              + "\n3 -- Quality prediction"
              + "\n4 -- Return to main menu")

        user_input = input("\nEnter a number: ")

        wines = pl.getWines()
        initialization(wines)

        if user_input == '1':
            pl.printWines(wines)

        elif user_input == '2':
            addMenu()

        elif user_input == '3':
            classificationMenu()

        elif user_input == '4':
            return

        else:
            print("\n [!] I don't know this command!")


def initialization(wines):
    pl.listProp(wines)
    pl.learn()


def addMenu():
    valueList = []

    wine = input("\nEnter the name of the wine to add to the Knowledge Base [without spaces]:\n> ").lower()

    (fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfur_dioxide,
     sulphates, alcohol, color) = inputExample()
    valueList.extend([wine, fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides,
                      free_sulfur_dioxide, total_sulfur_dioxide, sulphates, alcohol, color, ""])

    featureDict = pl.createDict(valueList)

    response = input("\nDo you know how's the quality of this wine?[y/n]:\n> ")

    if response == "y":
        user_input = int(input("\nEnter the quality value[from 1 to 10]:\n> "))
        quality = classifyInput(user_input)

    elif response == "n":
        fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol = pl.classifyValues(featureDict)
        example = ("[fixAcid_class = " + fixAcid + ", volAcid_class = " + volAcid + ", citAcid_class = " + citAcid
                   + ",  rSugar_class = " + rSugar + ", chlorides_class = " + chlorides + ", freeSulf_class = "
                   + freeSulf + ", totSulf_class = " + totSulf + ", sulphates_class = " + sulphates
                   + ", alcohol_class = " + alcohol + ", color_class = " + color + "]")
        quality = pl.classifyExample(example)
    else:
        print("Wrong command!")
        return

    print("Quality: " + quality)
    valueList.pop()
    valueList.append(quality)
    pl.addWine(wine, valueList)

    print("\nWine added!")


def classifyInput(quality):
    if quality < 6:
        return "bad"
    else:
        return "good"


def classificationMenu():

    user_inputs = classInput()

    fixAcid, volAcid, citAcid, rSugar, chlorides, freeSulf, totSulf, sulphates, alcohol = pl.classifyValues(user_inputs)

    example = ("[fixAcid_class = " + fixAcid + ", volAcid_class = " + volAcid + ", citAcid_class = " + citAcid
               + ", rSugar_class = " + rSugar + ", chlorides_class = " + chlorides + ", freeSulf_class = " + freeSulf
               + ", totSulf_class = " + totSulf + ", sulphates_class = " + sulphates + ", alcohol_class = " + alcohol
               + ", color_class = " + user_inputs["color"] + "]")
    pl.classifyExample(example)


def classInput():
    values = []

    (fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfur_dioxide,
     sulphates, alcohol, color) = inputExample()

    values.extend(
        ["", fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides,
         free_sulfur_dioxide, total_sulfur_dioxide, sulphates, alcohol, color, ""])
    user_inputs = pl.createDict(values)

    return user_inputs


def inputExample():
    fixed_acidity = input("\nEnter fixed acidity: [> 0] ", )
    volatile_acidity = input("Enter volatile acidity: [> 0]", )
    citric_acid = input("Enter citric acid: [>= 0]", )
    residual_sugar = input("Enter residual sugar: [> 0]", )
    chlorides = input("Enter chlorides: [> 0]", )
    fs_dioxide = input("Enter free sulfur dioxide: [> 0]", )
    ts_dioxide = input("Enter total sulfur dioxide: [> 0]", )
    sulphates = input("Enter sulphates: [> 0]", )
    alcohol = input("Enter alcohol: [> 0]", )
    color = input("Enter color: [red/white]")

    return (fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, fs_dioxide, ts_dioxide, sulphates,
            alcohol, color)
