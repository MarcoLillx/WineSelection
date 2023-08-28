from pyswip import Prolog

prolog = Prolog()
prolog.consult("../KB/knowledge.pl")


def addAssert(str):
    prolog.assertz(str)


def deleteAssert(str):
    prolog.retract(str)


def query(str):
    return list(prolog.query(str))


def getWines():
    wines = list(prolog.query("wine(Id, Title, Type, Region, Price, Taste, Food)"))
    return wines


def titleType(type):
    type = type.lower()

    query_string = f"title_type(X, '{type}')"
    result = query(query_string)
    return result


def titleTaste(taste):
    taste = taste.lower()

    query_string = f"title_taste(X, '{taste}')"
    result = query(query_string)
    return result


def titlePrice(price):
    price = int(price)

    price_list = []

    matching_prices = query(f"price( X )")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_price(X,{new_price})"

    return query(query_string)


def titleFood(food):
    food = food.lower()

    query_string = f"title_food(X, '{food}')"
    result = query(query_string)

    return result


def titleTypeTaste(type, taste):
    type = type.lower()
    taste = taste.lower()
    query_string = f"title_type_taste(X, '{type}', '{taste}')"
    result = query(query_string)
    return result


def titleTypePrice(type, price):
    type = type.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"type_price('{type}', X)")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_type_price(X, '{type}',{new_price})"

    return query(query_string)


def titleTypeFood(type, food):
    type = type.lower()
    food = food.lower()

    query_string = f"title_type_food(X, '{type}', '{food}')"
    result = query(query_string)
    return result


def titleTypePriceTaste(type, price, taste):
    type = type.lower()
    taste = taste.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"type_price_taste('{type}', X, '{taste}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_type_price_taste(X, '{type}', {new_price}, '{taste}',)"

    return query(query_string)


def titleTypeTasteFood(type, taste, food):
    type = type.lower()
    taste = taste.lower()
    food = food.lower()

    query_string = f"title_type_taste_food(X, '{type}', '{taste}', '{food}')"
    result = query(query_string)
    return result


def titleTypePriceFood(type, price, food):
    type = type.lower()
    food = food.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"type_price_food('{type}', X, '{food}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_type_price_food(X, '{type}',{new_price}, '{food}')"

    return query(query_string)


def titlePriceTaste(price, taste):
    taste = taste.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"price_taste( X, '{taste}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_price_taste(X, {new_price}, '{taste}')"

    return query(query_string)


def titleTasteFood(taste, food):
    taste = taste.lower()
    food = food.lower()

    query_string = f"title_taste_food(X, '{taste}', '{food}')"
    return query(query_string)


def titlePriceTasteFood(price, taste, food):
    taste = taste.lower()
    food = food.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"price_taste_food( X, '{taste}', '{food}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_price_taste_food(X, {new_price}, '{taste}', '{food}')"

    return query(query_string)


def titlePriceFood(price, food):
    food = food.lower()
    price = int(price)

    price_list = []

    matching_prices = query(f"price_food(X, '{food}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_price_food(X, {new_price}, '{food}')"

    return query(query_string)


def allSearch(type, price, taste, food):
    type = type.lower()
    price = int(price)
    taste = taste.lower()
    food = food.lower()

    price_list = []

    matching_prices = query(f"type_price_taste_food('{type}', X, '{taste}', '{food}')")
    for elem in matching_prices:
        price_list.append(elem["X"])  # Insert in a list all the prices

    new_price = closest_value(price_list, price)  # Takes the nearest price in the list
    query_string = f"title_type_price_taste_food(X, '{type}', {new_price}, '{taste}', '{food}')"

    return query(query_string)


# Search for the closest price to the one given in user input
def closest_value(price_list, target):
    closest_val = None
    min_diff = float('inf')  # Initialize the minimum difference with a very large value

    for val in price_list:
        diff = abs(val - target)
        if diff < min_diff:
            min_diff = diff
            closest_val = val

    return closest_val
