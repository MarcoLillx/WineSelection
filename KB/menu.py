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
        "type": input("\n Write a type [red/white/rose/sparkling] or blank for no preference: "),
        "price": float(input("\n Write a price or blank for no preference: ")),
        "taste": input("\n Write a taste [dry/sweet/crisp] or blank for no preference: "),
        "food": input("\n Write a food [red meat/white meat/fish/dessert] or blank for no preference: ")
    }

    if all(value != "" for value in preferences.values()):
        wine = qk.allSearch(preferences["type"], preferences["price"], preferences["taste"], preferences["food"])
        print_matching_wine(wine)
    elif all(value == "" for value in preferences.values()):
        print("You have no preferences, all wines are good for you!")
    else:
        wine = find_matching_wine(preferences)
        print_matching_wine(wine)


def find_matching_wine(preferences):
    if preferences["type"] == "":
        if preferences["price"] == "":
            if preferences["taste"] == "":
                # food
                wine = qk.titleFood(preferences["food"])
            else:
                # taste-food
                wine = qk.tasteFood(preferences["taste"], preferences["food"])
        elif preferences["taste"] == "":
            # price-food
            wine = qk.priceFood(preferences["price"], preferences["food"])
        else:
            # type-taste-food
            wine = qk.typeTasteFood(preferences["type"], preferences["taste"], preferences["food"])
    else:
        if preferences["price"] == "":
            if preferences["taste"] == "":
                if preferences["food"] == "":
                    # type
                    wine = qk.titleType(preferences["type"])
                else:
                    # type-food
                    wine = qk.typeFood(preferences["type"], preferences["food"])
            else:
                if preferences["food"] == "":
                    # type-taste
                    wine = qk.typeTaste(preferences["type"], preferences["taste"])
                else:
                    # type-taste-food
                    wine = qk.typeTasteFood(preferences["type"], preferences["taste"], preferences["food"])
        elif preferences["taste"] == "":
            if preferences["food"] == "":
                # type-price
                wine = qk.typePrice(preferences["type"], preferences["price"])
            else:
                # type-price-food
                wine = qk.typePriceFood(preferences["type"], preferences["price"], preferences["food"])
        else:
            if preferences["food"] == "":
                # taste-price
                wine = qk.tastePrice(preferences["taste"], preferences["price"])
            else:
                # type-price-taste
                wine = qk.typeTastePrice(preferences["type"], preferences["taste"], preferences["price"])

    return wine


def print_matching_wine(wine):
    wines = qk.getWines()

    wine_list = []
    wine_found = False

    for w in wine:
        for elem in w:
            wine_list.append(elem["X"])

    if wine_list:
        print("\nI found this wines for you!")
        for w in wines:
            for t in wine_list:
                if w["Title"].lower() == t.lower():
                    print("\nTitle:", t)
                    print("Type:", w["Type"])
                    print("Price:", w["Price"])
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
