/*
##R008##
##20##
"""
Realice un predicado que valide una direccion mac
20 pts

mac_ad("08:9e:01:6f:2e:41").
true
mac_ad("ff:ff:01:6f:2e:41").
true
mac_ad("00:00:00:00:00:00").
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
mac_ad(MAC) :-
    string(MAC),
    split_string(MAC, ":", "", Partes),
    length(Partes, 6),          % Debe tener 6 bloques
    validar_bloques_mac(Partes).
validar_bloques_mac([]).
validar_bloques_mac([B|Resto]) :-
    bloque_mac(B),
    validar_bloques_mac(Resto).
bloque_mac(B) :-
    string_to_liststring(B, Chars),
    length(Chars, 2),
    validar_hex(Chars).
validar_hex([]).
validar_hex([C|Resto]) :-
    char_hex(C),
    validar_hex(Resto).
char_hex(C) :- char_type(C, digit).
char_hex(C) :- member(C, ["a","b","c","d","e","f","A","B","C","D","E","F"]).

