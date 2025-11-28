/*
##R006##
##40##
"""

Defina un predicado capaz de validar una direccion ipV6
sin comprimir
https://es.wikipedia.org/wiki/IPv6#Notaci%C3%B3n_para_las_direcciones_IPv6
40 pts

ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334").
true.
ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab").
true.
ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001").
true.
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
tamanio([], 0).
tamanio([_|R], N) :-
    tamanio(R, N1),
    N is N1 + 1.
comlista(X, [X|_]).
comlista(X, [_|R]) :-
    comlista(X, R).
ipv6(IP) :-
    string(IP),
    split_string(IP, ":", "", Partes),
    tamanio(Partes, 8),
    validar_bloques(Partes).
validar_bloques([]).
validar_bloques([B|Resto]) :-
    bloque_hex(B),
    validar_bloques(Resto).
bloque_hex(B) :-
    string_to_liststring(B, Chars),
    tamanio(Chars, L),
    L >= 1, L =< 4,
    validar_hex(Chars).
validar_hex([]).
validar_hex([C|Resto]) :-
    char_hex(C),
    validar_hex(Resto).
char_hex(C) :- char_type(C, digit).
char_hex(C) :- comlista(C, ["a","b","c","d","e","f","A","B","C","D","E","F"]).
