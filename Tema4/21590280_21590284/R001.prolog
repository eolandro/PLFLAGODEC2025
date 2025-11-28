% ##R001##
integer_s(S) :-
    string(S),
    string_codes(S, Codigos),
    entero_valido(Codigos).

entero_valido([45 | Resto]) :-
    Resto \= [],
    solo_digitos(Resto).

entero_valido(Codigos) :-
    Codigos \= [],
    solo_digitos(Codigos).

solo_digitos([]).
solo_digitos([C | R]) :-
    code_type(C, digit),
    solo_digitos(R).