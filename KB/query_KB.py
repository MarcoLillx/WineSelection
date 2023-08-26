import numpy as np
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


# Da controllare l'usage
def typeTitle(title):
    query_string = f"title_type('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titleTaste(taste):
    taste = taste.lower()

    query_string = f"title_taste(X, '{taste}')"
    result = query(query_string)
    return result

# Da controllare l'usage
def tasteTitle(title):
    query_string = f"title_taste('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titlePrice(price):
    price = int(price)

    interval = np.arange(abs(price - 5), price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_price(X, {p})"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_price(X,{new_price})"

    return query(query_string)

# Da controllare l'usage
def priceTitle(title):
    query_string = f"title_price('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titleFood(food):
    food =  food.lower()

    query_string = f"title_food(X, '{food}')"
    result = query(query_string)

    return result

# Da controllare l'usage
def foodTitle(title):
    query_string = f"title_food('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titleTypeTaste(type, taste):
    type = type.lower()
    taste = taste.lower()
    query_string = f"title_type_taste(X, '{type}', '{taste}')"
    result = query(query_string)
    return result

def titleTypePrice(type, price):
    type = type.lower()
    price = int(price)

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_type_price(X, '{type}', {p})"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_type_price(X, '{type}',{new_price})"

    return query(query_string)


def titleTypeFood(type, food):
    type = type.lower()
    food = food.lower()

    query_string = f"title_type_food(X, '{type}', '{food}')"
    result = query(query_string)
    return result


def titleTypeTastePrice(type, taste, price):
    type = type.lower()
    taste = taste.lower()
    price = int(price)

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_type_taste_price(X, '{type}', '{taste}', {p})"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_type_taste_price(X, '{type}', '{taste}', {new_price})"

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

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_type_price_food(X, '{type}', {p}, '{food}')"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_type_price_food(X, '{type}',{new_price}, '{food}')"

    return query(query_string)


def titleTastePrice(taste, price):
    taste = taste.lower()
    price = int(price)

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_taste_price(X, '{taste}', {p})"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_taste_price(X, '{taste}',{new_price})"

    return query(query_string)


def titleTasteFood(taste, food):
    taste = taste.lower()
    food = food.lower()

    query_string = f"title_taste_food(X, '{taste}', '{food}')"
    return query(query_string)


def titleTastePriceFood(taste, price, food):
    taste = taste.lower()
    food = food.lower()
    price = int(price)

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_taste_price_food(X, '{taste}', {p}, '{food}')"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_taste_price_food(X, '{taste}',{new_price}, '{food}')"

    return query(query_string)


def titlePriceFood(price, food):
    food = food.lower()
    price = int(price)

    interval = np.arange(price - 5, price + 5)
    price_list = []

    for p in interval:
        query_string = f"title_price_food(X, {p}, '{food}')"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price)
    query_string = f"title_price_food(X, {new_price}, '{food}')"

    return query(query_string)


def allSearch(type_input, price_input, taste_input, food_input):
    type_input = type_input.lower()
    price_input = int(price_input)
    taste_input = taste_input.lower()
    food_input = food_input.lower()

    interval = np.arange(price_input - 5, price_input + 5)
    price_list = []

    for p in interval:
        query_string = f"title_type_price_taste_food(X, '{type_input}', {p}, '{taste_input}', '{food_input}')"
        if query(query_string):
            price_list.append(p)

    new_price = closest_value(price_list, price_input)
    query_string = f"title_type_price_taste_food(X, '{type_input}', {new_price}, '{taste_input}', '{food_input}')"

    return query(query_string)


# Cerca il prezzo più vicino a quello dato in input dall'utente
def closest_value(price_list, target):
    closest_val = None
    min_diff = float('inf')  # Inizializza la differenza minima con un valore molto grande

    for val in price_list:
        diff = abs(val - target)
        if diff < min_diff:
            min_diff = diff
            closest_val = val

    return closest_val
