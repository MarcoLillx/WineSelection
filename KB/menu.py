import random
import query_KB as qk
import quality_menu as qm


def menu():
    while True:
        # system('cls')

        mainMenu()

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # wine section
            wineSectionMenu()

        elif user_input == 2:
            # Wine recommender
            recommendMenu()

        elif user_input == 3:
            # Predict the quality of a wine
            qm.menu()

        elif user_input == 4:
            # user manual
            userManual()

        elif user_input == 5:
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def wineSectionMenu():
    while True:
        wineSectionTextMenu()

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # print 5 random wine or all
            printWineMenu()

        elif user_input == 2:
            # find a wine by name
            findWine()

        elif user_input == 3:
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def printWineMenu():
    wines = qk.getWines()

    while True:
        print("\n 1 -- Print all wines"
              + "\n 2 -- Print a random wine"
              + "\n 3 -- Return to main menu")

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # all wines
            for wine in wines:
                print(wine["Title"])

        elif user_input == 2:
            # 1 random Wine
            r = random.randint(0, 29)

            print(f"\nWine name: {wines[r]['Title']}")

        elif user_input == 3:
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def findWine():
    wines = qk.getWines()

    while True:
        print("\n 1 -- Find by name"
              + "\n 2 -- Find by ID"
              + "\n 3 -- Return to Wine section")

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # by name
            input_name = input("\nEnter wine name: ").lower()
            found_wine = None

            for wine in wines:
                if wine["Title"].lower() == input_name:
                    found_wine = wine

            if found_wine:
                print("Wine found!")
                print("Title:", found_wine["Title"])
                print("Type:", found_wine["Type"])
                print("Region:", found_wine["Region"])
                print("Price:", found_wine["Price"])
                print("Taste:", found_wine["Taste"])
                print("Food:", found_wine["Food"])
            else:
                print("\nWine not found.")

        elif user_input == 2:
            # by id
            input_id = int(input("\nEnter wine ID: "))

            found_wine = None

            for wine in wines:
                if wine["Id"] == input_id:
                    found_wine = wine

            if found_wine:
                print("Wine found!")
                print("Title:", found_wine["Title"])
                print("Type:", found_wine["Type"])
                print("Region:", found_wine["Region"])
                print("Price:", found_wine["Price"])
                print("Taste:", found_wine["Taste"])
                print("Food:", found_wine["Food"])
            else:
                print("\nWine not found.")

        elif user_input == 3:
            break
        else:
            print("\n [!] I don't know this command!")


def recommendMenu():
    while True:
        recommendTextMenu()

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # logic classifier
            recommender()

        elif user_input == 2:
            # info/help
            recommendHelp()

        elif user_input == 3:
            # exit
            break
        else:
            print("\n [!] I don't know this command!")


def recommender():
    preferences = {
        "type": input("\n Write a type [red/white/rose/sparkling] or 'x' for no preference: "),
        "price": input("\n Write a price or 'x' for no preference: "),
        "taste": input("\n Write a taste [dry/sweet/crisp] or 'x' for no preference: "),
        "food": input("\n Write a food [red meat/white meat/fish/dessert] or 'x' for no preference: ")
    }

    if all(value != "x" for value in preferences.values()):
        wine = qk.allSearch(preferences["type"], preferences["price"], preferences["taste"], preferences["food"])
        print_matching_wine(wine)
    elif all(value == "x" for value in preferences.values()):
        print("You have no preferences, all wines are good for you!")
    else:
        wine = find_matching_wine(preferences)
        print_matching_wine_x(wine)

# if-else statement troppo dispendioso, utilizzare invece un dizionario
# (oppure scrivere le 4^2 combinazioni concatenandoli con l'operatore and)
def find_matching_wine(preferences):
    if preferences["type"] == "x":
        if preferences["price"] == "x":
            if preferences["taste"] == "x":
                # food
                wine = qk.titleFood(preferences["food"])
            elif preferences["food"] == "x":
                # taste
                wine = qk.titleTaste(preferences["taste"])
            else:
                # taste-food
                wine = qk.titleTasteFood(preferences["taste"], preferences["food"])
        elif preferences["taste"] == "x" and preferences["food"] == "x":
            # price
            wine = qk.titlePrice(preferences["price"])

        elif preferences["taste"] == "x":
            # price-food
            wine = qk.titlePriceFood(preferences["price"], preferences["food"])

        elif preferences["food"] == "x":
            # taste-price
            wine = qk.titleTastePrice(preferences["taste"], preferences["price"])
        else:
            # taste-price-food
            wine = qk.titleTastePriceFood(preferences["taste"], preferences["price"], preferences["food"])
    else:
        if preferences["price"] == "x":
            if preferences["taste"] == "x":
                if preferences["food"] == "x":
                    # type
                    wine = qk.titleType(preferences["type"])
                else:
                    # type-food
                    wine = qk.titleTypeFood(preferences["type"], preferences["food"])
            else:
                if preferences["food"] == "x":
                    # type-taste
                    wine = qk.titleTypeTaste(preferences["type"], preferences["taste"])
                else:
                    # type-taste-food
                    wine = qk.titleTypeTasteFood(preferences["type"], preferences["taste"], preferences["food"])
        elif preferences["taste"] == "x":
            if preferences["food"] == "x":
                # type-price
                wine = qk.titleTypePrice(preferences["type"], preferences["price"])
            else:
                # type-price-food
                wine = qk.titleTypePriceFood(preferences["type"], preferences["price"], preferences["food"])
        else:
            if preferences["food"] == "x":
                # type-taste-price
                wine = qk.titleTypeTastePrice(preferences["type"], preferences["taste"], preferences["price"])
            else:
                wine = None
                print("Error while calculating your preferences.")

    return wine


def print_matching_wine(wine):
    wines = qk.getWines()

    wine_match = ""
    wine_found = False

    for w in wine:
        wine_match = w["X"]

    if wine_match != "":
        print("\nI found this wine for you!")
        for w in wines:
            if w["Title"].lower() == wine_match.lower():
                print("\nTitle:", wine_match)
                print("Type:", w["Type"])
                print("Price:", w["Price"], "€")
                print("Taste:", w["Taste"])
                print("Food:", w["Food"])
                wine_found = True

    if not wine_found:
        print("No wine matches your preferences.")


def print_matching_wine_x(wine):
    wines = qk.getWines()

    wine_list = []
    wine_found = False

    for w in wine:
        wine_list.append(w["X"])

    if wine_list:
        print("\nI found this wine for you!")
        r = random.randint(0, len(wine_list) - 1)
        for w in wines:
            if w["Title"].lower() == wine_list[r].lower():
                print("\nTitle:", wine_list[r])
                print("Type:", w["Type"])
                print("Price:", w["Price"], "€")
                print("Taste:", w["Taste"])
                print("Food:", w["Food"])
                wine_found = True

    if not wine_found:
        print("No wine matches your preferences.")


def mainMenu():
    print("\n Welcome!\n"
          + "\n 1 -- Wine catalogue"
          + "\n 2 -- Recommend me"
          + "\n 3 -- Quality prediction"
          + "\n 4 -- User Manual"
          + "\n 5 -- Exit")


def wineSectionTextMenu():
    print("\n # --- Wine section --- #\n"
          + "\n 1 -- Show wines"
          + "\n 2 -- Find a wine"
          + "\n 3 -- Back")


def recommendTextMenu():
    print("\n # --- Wine recommender --- #\n"
          + "\n 1 -- Recommend me"
          + "\n 2 -- Information/help"
          + "\n 3 -- Return to main menu")


def recommendHelp():
    print("\n # ------ Reccomender manual ------ #"
          + "\n\n [Type]"
          + "\n The wine's color."
          + "\n It depends on which type of grape is used to make the wine."
          + "\n\n [Taste]"
          + "\n Refers to the wine's flavor in the mouth."
          + "\n\n [Food]"
          + "\n It's the food you want to find a wine to pair with.")


def userManual():
    print("\n # ------ User Manual ------ #"
          + "\n\n [Wine catalogue]"
          + "\n     In this section you can read and search between 30 Italian wines."
          + "\n\n [Recommend me]"
          + "\n     In this section you'll be able to find the wine that better fits you're requests!"
          + "\n\n [Quality prediction]"
          + "\n     In this section you can predict what's the quality of a wine"
          + "\n     The calculation is performed based on a dataset of more than 6000 wines!")
