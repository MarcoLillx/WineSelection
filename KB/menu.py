import random
import prolog_recommend as pr
import quality_menu as qm


def menu():
    while True:

        mainMenu()

        user_input = input("\nEnter a number: ")

        if user_input == '1':
            # wine recommender
            recommendMenu()

        elif user_input == '2':
            # predict the quality of a wine
            qm.menu()

        elif user_input == '3':
            # user manual
            userManual()

        elif user_input == '4':
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def wineSectionMenu():
    while True:
        wineSectionTextMenu()

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # print a random wine or all
            printWineMenu()

        elif user_input == 2:
            # find a wine by name or id
            findWine()

        elif user_input == 3:
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def printWineMenu():
    wines = pr.getWines()

    while True:
        print("\n 1 -- Print all wines"
              + "\n 2 -- Print a random wine"
              + "\n 3 -- Return to main menu")

        user_input = int(input("\nEnter a number: "))

        if user_input == 1:
            # all wines
            for wine in wines:
                print(">" + wine["Title"])

        elif user_input == 2:
            # 1 random wine
            r = random.randint(0, 29)

            print(f"\n>{wines[r]['Title']}")

        elif user_input == 3:
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def findWine():
    wines = pr.getWines()

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

            print_wine_found(found_wine)

        elif user_input == 2:
            # by id
            input_id = int(input("\nEnter wine ID: "))

            found_wine = None

            for wine in wines:
                if wine["Id"] == input_id:
                    found_wine = wine

            print_wine_found(found_wine)

        elif user_input == 3:
            break
        else:
            print("\n [!] I don't know this command!")


def print_wine_found(wine):
    if wine:
        print("\nWine found!")
        print("Title:", wine["Title"])
        print("Type:", wine["Type"])
        print("Region:", wine["Region"])
        print("Price:", wine["Price"], "€")
        print("Taste:", wine["Taste"])
        print("Food:", wine["Food"])
    else:
        print("\nWine not found.")


def recommendMenu():
    while True:
        recommendTextMenu()

        user_input = input("\nEnter a number: ")

        if user_input == '1':
            # recommend system
            wineSectionMenu()

        elif user_input == '2':
            # add wine
            addRecommendWine()

        elif user_input == '3':
            # recommend system
            recommender()

        elif user_input == '4':
            # info/help
            recommendHelp()

        elif user_input == '5':
            # exit
            break

        else:
            print("\n [!] I don't know this command!")


def recommender():
    # dictionary for user preferences
    preferences = {
        "type": input("\n Enter a type [red/white/rose/sparkling] or 'x' for no preference: "),
        "price": input("Enter a price or 'x' for no preference: "),
        "taste": input("Enter a taste [dry/sweet/crisp] or 'x' for no preference: "),
        "food": input("Enter a food [red meat/white meat/fish/dessert] or 'x' for no preference: ")
    }

    if all(value != "x" for value in preferences.values()):
        wine = pr.allSearch(preferences["type"], preferences["price"], preferences["taste"], preferences["food"])
        print_matching_wine(wine)
    elif all(value == "x" for value in preferences.values()):
        print("\nYou have no preferences, all wines are good for you!")
    else:
        wine = find_matching_wine(preferences)
        print_matching_wine(wine)


def find_matching_wine(preferences):
    if preferences["type"] == "x":
        if preferences["price"] == "x":
            if preferences["taste"] == "x":
                # food
                wine = pr.titleFood(preferences["food"])
            elif preferences["food"] == "x":
                # taste
                wine = pr.titleTaste(preferences["taste"])
            else:
                # taste-food
                wine = pr.titleTasteFood(preferences["taste"], preferences["food"])
        elif preferences["taste"] == "x" and preferences["food"] == "x":
            # price
            wine = pr.titlePrice(preferences["price"])

        elif preferences["taste"] == "x":
            # price-food
            wine = pr.titlePriceFood(preferences["price"], preferences["food"])

        elif preferences["food"] == "x":
            # taste-price
            wine = pr.titlePriceTaste(preferences["price"], preferences["taste"])
        else:
            # taste-price-food
            wine = pr.titlePriceTasteFood(preferences["price"], preferences["taste"], preferences["food"])
    else:
        if preferences["price"] == "x":
            if preferences["taste"] == "x":
                if preferences["food"] == "x":
                    # type
                    wine = pr.titleType(preferences["type"])
                else:
                    # type-food
                    wine = pr.titleTypeFood(preferences["type"], preferences["food"])
            else:
                if preferences["food"] == "x":
                    # type-taste
                    wine = pr.titleTypeTaste(preferences["type"], preferences["taste"])
                else:
                    # type-taste-food
                    wine = pr.titleTypeTasteFood(preferences["type"], preferences["taste"], preferences["food"])
        elif preferences["taste"] == "x":
            if preferences["food"] == "x":
                # type-price
                wine = pr.titleTypePrice(preferences["type"], preferences["price"])
            else:
                # type-price-food
                wine = pr.titleTypePriceFood(preferences["type"], preferences["price"], preferences["food"])
        else:
            if preferences["food"] == "x":
                # type-taste-price
                wine = pr.titleTypePriceTaste(preferences["type"], preferences["price"], preferences["taste"])
            else:
                wine = None
                print("Error while calculating your preferences.")

    return wine


def print_matching_wine(wine):
    wines = pr.getWines()

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
                print("Region:", w["Region"])
                print("Price:", w["Price"], "€")
                print("Taste:", w["Taste"])
                print("Food:", w["Food"])
                wine_found = True

    if not wine_found:
        print("No wine matches your preferences.")


def addRecommendWine():
    wines = pr.getWines()
    flag = True

    print("\nAdd your wine in the dataset!")

    id = maxID(wines) + 1
    title = input("\nEnter wine's name: ")
    type = input("Enter wine's type: ")
    region = input("Enter wine's region: ")

    while flag:
        price = input("Enter wine's price: ")
        if price.isdigit():
            flag = False
        else:
            print("\n[!] Please enter a number.")

    taste = input("Enter wine's taste: ")
    food = input("Enter wine's best food to pair with: ")

    for w in wines:
        if w["Title"] == title:
            print("\n[!] This wine already exists in the dataset!")
            return

    add_query = f"wine({id}, '{title}', {type}, '{region}', {price}, {taste}, '{food}')"
    pr.addAssert(add_query)
    print("\nWine added!")


def maxID(wine_list):
    max_id = 0
    for wine in wine_list:
        if wine['Id'] > max_id:
            max_id = wine['Id']
    return max_id


def mainMenu():
    print("\n Welcome!\n"
          + "\n 1 -- Wine recommender"
          + "\n 2 -- Quality prediction"
          + "\n 3 -- User Manual"
          + "\n 4 -- Exit")


def wineSectionTextMenu():
    print("\n # --- Wine section --- #\n"
          + "\n 1 -- Show wines"
          + "\n 2 -- Find a wine"
          + "\n 3 -- Back")


def recommendTextMenu():
    print("\n # --- Wine recommender --- #\n"
          + "\n 1 -- Wine Catalogue"
          + "\n 2 -- Add wine"
          + "\n 3 -- Recommend me"
          + "\n 4 -- Information/help"
          + "\n 5 -- Return to main menu")


def userManual():
    print("\n # ------ User Manual ------ #"
          + "\n\n [Recommend me]"
          + "\n     In this section, you'll be able to find the wine that better fits you're requests!"
          + "\n\n [Quality prediction]"
          + "\n     In this section, you can predict what's the quality of a wine"
          + "\n     The calculation is performed based on a dataset of 41 wines!")


def recommendHelp():
    print("\n # ------ Recommender manual ------ #"
          + "\n\n -- Sections Help --"
          + "\n\n [Wine Catalogue]"
          + "\n In this section, you can browse through an extensive catalog of wines and search for your favorite by "
          + "\n comparing color, prices, flavor, and associated food."
          + "\n\n [Add Wine]"
          + "\n In this section, you can add a wine in the dataset."
          + "\n\n [Recommend me]"
          + "\n In this section, you can find the wine that suits your preferences."
          + "\n\n -- Terminology --"
          + "\n\n [Type]"
          + "\n The wine's color."
          + "\n It depends on which type of grape is used to make the wine."
          + "\n\n [Taste]"
          + "\n Refers to the wine's flavor in the mouth."
          + "\n\n [Food]"
          + "\n It's the food you want to find a wine to pair with.")
