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
    query_string = f"title_type(X, {type})"
    print("Query: " + query_string)
    results = query(query_string)
    print("Results: " + results)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def typeTitle(title):
    query_string = f"title_type('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titleTaste(taste):
    query_string = f"title_taste(X, '{taste}')"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def tasteTitle(title):
    query_string = f"title_taste('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titlePrice(price):
    query_string = f"title_price(X, '{price}')"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def priceTitle(title):
    query_string = f"title_price('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def titleFood(food):
    query_string = f"title_food(X, '{food}')"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def foodTitle(title):
    query_string = f"title_food('{title}', X)"
    results = query(query_string)
    if results:
        return results[0]["X"]
    else:
        return "Unknown"


def typeTaste(type, taste):
    type = type.lower()
    taste = taste.lower()
    return query("title _ type _ taste(X,\"" + type + "\",\"" + taste + "\").")


def typePrice(type, price):
    type = type.lower()
    interval = np.arange(1, price + 1)
    my_list = []
    for i in interval:
        i = i.astype(str)
        if query("title _ type _ price(X,\"" + type + "\",\"" + i + "\")."):
            my_list.append(query("title _ type _ price(X,\"" + type + "\",\"" + i + "\")."))
    return my_list


def typeFood(type, food):
    type = type.lower()
    food = food.lower()
    return query("title _ type _ food(X,\"" + type + "\",\"" + food + "\").")


def typeTastePrice(type_input, taste_input, price_input):
    type_input = type_input.lower()
    taste_input = taste_input.lower()
    price_input = float(price_input)

    query_string = f"title_type_taste_price(X,'{type_input}','{taste_input}',{price_input})"
    results = query(query_string)
    return results


def typeTasteFood(type, taste, food):
    type = type.lower()
    taste = taste.lower()
    food = food.lower()
    return query("title_type_taste_food(X,\"" + type + "\",\"" + taste + "\",\"" + food + "\").")


def typePriceFood(type, price, food):
    type = type.lower()
    food = food.lower()
    interval = np.arange(1, price + 1)
    my_list = []
    for i in interval:
        i = i.astype(str)
        if query("title _ type _ price _ food(X,\"" + type + "\",\"" + i + "\",\"" + food + "\")."):
            my_list.append(
                query("title _ type _ price _ food(X,\"" + type + "\",\"" + i + "\",\"" + food + "\")."))
    return my_list


def tastePrice(taste, price):
    taste_input = taste.lower()
    price_input = float(price)

    price_min = price_input - 2
    price_max = price_input + 2

    matching_wines = []
    for price in range(int(price_min), int(price_max) + 1):
        if price > 0:
            query_string = f"title_taste_price(X, '{taste_input}', '{price_input}')"
            results = query(query_string)
            if results:
                matching_wines.extend(results)

    return matching_wines


def tasteFood(taste, food):
    taste = taste.lower()
    food = food.lower()
    return f"title_taste_food(X, '{taste}', '{food}')"


def tastePriceFood(taste, price, food):
    taste = taste.lower()
    food = food.lower()
    interval = np.arange(1, price + 1)
    my_list = []
    for i in interval:
        i = i.astype(str)
        if query("title _ taste _ price _ food(X,\"" + taste + "\",\"" + i + "\",\"" + food + "\")."):
            my_list.append(
                query("title _ taste _ price _ food(X,\"" + taste + "\",\"" + i + "\",\"" + food + "\")."))
    return my_list


def priceFood(price, food):
    food = food.lower()
    interval = np.arange(1, price + 1)
    my_list = []
    for i in interval:
        i = i.astype(str)
        if query("title _ price _ food(X,\"" + food + "\",\"" + i + "\")."):
            my_list.append(query("title _ price _ food(X,\"" + food + "\",\"" + i + "\")."))
    return my_list


def allSearch(type_input, price_input, taste_input, food_input):
    type_input = type_input.lower()
    taste_input = taste_input.lower()
    food_input = food_input.lower()

    interval = np.arange(price_input - 5, price_input + 5)

    my_list = []

    for p in interval:
        query_string = f"title_type_price_taste_food(X, '{type_input}', {p}, '{taste_input}', '{food_input}')"
        if query(query_string):
            my_list.append(query(query_string))

    return my_list
