% ##R004##
fraction(S) :-
    string(S),
    string_codes(S, C),
    es_fraccion(C).

es_fraccion([]).
es_fraccion([46 | Resto]) :-
    Resto \= [],
    solo_digitos(Resto).

solo_digitos([]).
solo_digitos([C | R]) :-
    code_type(C, digit),
    solo_digitos(R).