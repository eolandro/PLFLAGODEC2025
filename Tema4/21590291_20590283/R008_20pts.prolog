/*##R008##
##20##
"""
Realice un predicado que valide una direccion mac
20 pts

mac_ad("08:9e:01:6f:2e:41").
true
mac_ad("ff:ff:01:6f:2e:41").
true
mac_ad("00:00:00:00:00:00").
true*/

listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).  % separa la cadena en caracteres (strings de 1 char)

% Validador de dirección MAC xx:xx:xx:xx:xx:xx
mac_ad(Str) :-
    split_string(Str, ":", "", Octetos), % separar por ':'
    length(Octetos, 6), % deben ser exactamente 6 partes
    maplist(mac_octeto, Octetos). % cada parte debe ser un octeto hexadecimal

mac_octeto(S) :-
    string_length(S, 2), % solo 2 caracteres
    string_to_liststring(S, [S1,S2]), % por ejemplo ["0","8"] 
    hex_str(S1),
    hex_str(S2).

% Checar que un string de 1 carácter sea hex
hex_str(S) :-
    string_chars(S, [C]),
    hex_char(C).

% Validar carácteres en hexadecimal
hex_char(C) :-
    char_type(C, digit). % caracteres en hex 0-9
hex_char(C) :-
    member(C, ['a','b','c','d','e','f', % caracteres en hex a-f
               'A','B','C','D','E','F']). % caracteres en hex A-F
