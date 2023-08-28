% Fatti riguardanti i vini
wine(1, 'Bellavista Vittorio Moretti 2013', sparkling, 'Lombardy', 89, crisp, 'fish').
wine(2, 'Baglio di Pianetto 2007 Ficiligno White', white, 'Sicily', 19, sweet, 'fish').
wine(3, 'Quintarelli Giuseppe Amarone della Valpolicella Classico 2009', red, 'Veneto', 480, sweet, 'red meat').
wine(4, 'Stemmari 2013 Dalila White', white, 'Sicily', 13, dry, 'fish').
wine(5, 'Stemmari 2013 Nero d\'Avola', red, 'Sicily', 10, dry, 'red meat').
wine(6, 'Terre di Giurfo 2011 Mascaria Barricato (Cerasuolo di Vittoria)', red, 'Sicily', 17, sweet, 'red meat').
wine(7, 'Passito di Pantelleria 2021', red, 'Sicily', 25, sweet, 'dessert').
wine(8, 'Feudi di San Marzano 2011 I Tratturi Primitivo', red, 'Apulia', 11, dry, 'red meat').
wine(9, 'Polvanera Brut Rose 2021', sparkling, 'Apulia', 12, crisp, 'fish').
wine(10, 'Botromagno Verdeca di Gravina', white, 'Apulia', 10, sweet, 'fish').
wine(11, 'Tasca d\'Almerita 2011 Sallier de la Tour Inzolia', white, 'Sicily', 13, dry, 'white meat').
wine(12, 'Alta Langa Metodo Classico 2018', sparkling, 'Piedmont', 24, crisp, 'white meat').
wine(13, 'Tasca d\'Almerita 2011 Sallier de la Tour Grillo', white, 'Sicily', 13, crisp, 'fish').
wine(14, 'Podere dal Nespoli 2015 Prugneto Sangiovese', red, 'Emilia Romagna', 17, dry, 'red meat').
wine(15, 'Alie Rose Toscana 2021', rose, 'Tuscany', 14, dry, 'white meat').
wine(16, 'Poggio Alloro 2014 Le Mandorle Riserva  (Vernaccia di San Gimignano)', white, 'Tuscany', 29, dry, 'fish').
wine(17, 'Fattoria Sardi 2015 Rosato', rose, 'Tuscany', 19, sweet, 'fish').
wine(18, 'Serpaia di Endrizzi 2010 Dono Riserva  (Morellino di Scansano)', red, 'Tuscany', 30, dry, 'red meat').
wine(19, 'Lornano Vin Santo del Chianti Classico 2012', red, 'Tuscany', 23, sweet, 'dessert').
wine(20, 'De Miranda Asti Spumante 2019', sparkling, 'Piedmont', 18, sweet, 'dessert').
wine(21, 'Cerasuolo d\'Abruzzo 2019', red, 'Abruzzo', 30, dry, 'red meat').
wine(22, 'San Marzano 60 Sessantanni Old Vines Primitivo di Manduria 2017', red, 'Tuscany', 23, sweet, 'white meat').
wine(23, 'Tenuta Moraia Perpiero 2019', red, 'Tuscany', 75, dry, 'white meat').
wine(24, 'Bonarda Vivace \'Sabion\' Berte Cordini 2020', red, 'Lombardy', 12, crisp, 'red meat').
wine(25, 'Aleatico Vinaccero 2016', red, 'Apulia', 12, sweet, 'dessert').
wine(26, 'Scacco Matto Albana di Romagna Passito 2020', white, 'Emilia-Romagna', 50, sweet, 'dessert').
wine(27, 'Rosa dei Venti 2021', rose, 'Marche', 12, dry, 'white meat').
wine(28, 'Podere dei Folli Preafete Chiaretto 2014', rose, 'Lombardy', 15, crisp, 'fish').
wine(29, 'Cantina Diomede Annibale Nero di Troia 2015', red, 'Apulia', 24, dry, 'red meat').
wine(30, 'Aimu Gewrztraminer 2020', white, 'Piedmont', 17, dry, 'white meat').

% Relazioni tra gli attributi del vino
id(_).
title(_).
id_title(Id, Title) :- wine(Id, Title, _, _, _, _, _).

% Regole per la ricerca di un vino tramite inserimento di parametri
title_price(Title, Price) :- wine(_, Title, _, _, Price, _, _).
title_taste(Title, Taste) :- wine(_, Title, _, _, _, Taste, _).
title_type(Title, Type) :- wine(_, Title, Type, _, _, _, _).
title_food(Title, Food) :- wine(_, Title, _, _, _, _, Food).
title_type_price(Title, Type, Price) :- wine(_, Title, Type, _, Price, _, _).
title_type_taste(Title, Type, Taste) :- wine(_, Title, Type, _, _, Taste, _).
title_type_food(Title, Type, Food) :- wine(_, Title, Type, _, _, _, Food).
title_price_taste(Title, Price, Taste) :- wine(_, Title, _, _, Price, Taste, _).
title_taste_food(Title, Taste, Food) :- wine(_, Title, _, _, _, Taste, Food).
title_price_food(Title, Price, Food) :- wine(_, Title, _, _, Price, _, Food).
title_type_price_taste(Title, Type, Price, Taste) :- wine(_, Title, Type, _, Price, Taste, _).
title_type_taste_food(Title, Type, Taste, Food) :- wine(_, Title, Type, _, _, Taste, Food).
title_type_price_food(Title, Type, Price, Food) :- wine(_, Title, Type, _, Price, _, Food).
title_price_taste_food(Title, Price, Taste, Food) :- wine(_, Title, _, _, Price, Taste, Food).
title_type_price_taste_food(Title, Type, Price, Taste, Food) :- wine(_, Title, Type, _, Price, Taste, Food).

% Regole per ottenere il prezzo di un vino
type_price_taste_food(Type, Price, Taste, Food) :- wine(_,_, Type,_, Price, Taste, Food).
type_price_food(Type, Price, Food) :- wine(_,_, Type,_, Price, _, Food).
type_price_taste(Type, Price, Taste) :- wine(_,_, Type,_, Price, Taste, _).
price_taste_food(Price, Taste, Food) :- wine(_,_, _,_, Price, Taste, Food).
type_price(Type, Price) :- wine(_,_, Type,_, Price, _, _).
price_taste(Price, Taste) :- wine(_,_, _,_, Price, Taste, _).
price_food(Price, Food) :- wine(_,_, _,_, Price, _, Food).
price(Price) :- wine(_,_, _,_, Price, _, _).