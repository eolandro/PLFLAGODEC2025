/*
##R009##
##20##
"""
Realice un predicado que valide un UUID v4
https://en.wikipedia.org/wiki/Universally_unique_identifier
40 pts

uuid("7eb36e8e-13ea-434f-a34e-a47d7ba28676").
true
uuid("1ffc0af2-7f0a-4114-bbc8-87c66eef1cc4").
true
uuid("422a4f74-e8a7-4567-aa3f-40c9fcc74993").
true
"""
*/
listatom_liststring([A], LC) :-
    atom_string(A, C),
    LC = [C].
listatom_liststring([A|RA], LC) :-
    listatom_liststring(RA, LCC),
    atom_string(A, C),
    LC = [C|LCC].
string_to_liststring(Cadena, LCadenas) :-
    string_chars(Cadena, LAtomos),
    listatom_liststring(LAtomos, LCadenas).
uuid(UUID) :-
    string(UUID),
    split_string(UUID, "-", "", [P1, P2, P3, P4, P5]),
    validar_bloque(P1, 8),
    validar_bloque(P2, 4),
    validar_bloque_v4(P3),
    validar_bloque_variante(P4),
    validar_bloque(P5, 12).
validar_bloque(Bloque, N) :-
    string_chars(Bloque, L),
    length(L, N),
    validar_hex_lista(L).
validar_bloque_v4(Bloque) :-
    string_chars(Bloque, [Primero|Resto]),
    Primero = '4',
    validar_hex_lista(Resto).
validar_bloque_variante(Bloque) :-
    string_chars(Bloque, [Primero|Resto]),
    member(Primero, ['8','9','a','b','A','B']),
    validar_hex_lista(Resto).
validar_hex_lista([]).
validar_hex_lista([C|R]) :-
    char_hex(C),
    validar_hex_lista(R).
char_hex(C) :- char_type(C, digit).
char_hex(C) :- member(C, ['a','b','c','d','e','f','A','B','C','D','E','F']).
