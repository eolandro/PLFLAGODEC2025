/*##R006##
##40##
"""

Defina un predicado capaz de validar una direccion ipV6
sin comprimir
https://es.wikipedia.org/wiki/IPv6#Notaci%C3%B3n_para_las_direcciones_IPv6
40 pts

ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334")
true.
ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab")
true.
ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001")
true.
"""
*/


listatom_liststring([A],[C]) :-
    atom_string(A, C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA, LCC),
    atom_string(A, C).
string_to_liststring(Cadena, LCadenas) :-
    string_chars(Cadena, LAtomos),
    listatom_liststring(LAtomos, LCadenas).   % separar cadena en "caracteres" (strings de 1 char)

% Validador IPv6 sin comprimir: 8 grupos hexadecimales 
ipv6(Str) :-
    split_string(Str, ":", "", Grupos), % separar por ':'
    length(Grupos, 8),% grupos de 8
    maplist(grupo_hex4, Grupos).

% Cada grupo: exactamente 4 hex
grupo_hex4(G) :-
    string_length(G, 4),
    string_to_liststring(G, LChars),   % ["2","0","0","1"]
    maplist(hex_str, LChars).

% Adaptador: string de 1 carácter -> carácter
hex_str(S) :-
    string_chars(S, [C]),
    hex_char(C).

% Un carácter hexadecimal: 0-9, a-f, A-F (sin usar xdigit)
hex_char(C) :-
    char_type(C, digit).                 % '0'..'9'
hex_char(C) :-
    char_type(C, lower),
    member(C, ['a','b','c','d','e','f']). % 'a'..'f'
hex_char(C) :-
    char_type(C, upper),
    member(C, ['A','B','C','D','E','F']). % 'A'..'F'
