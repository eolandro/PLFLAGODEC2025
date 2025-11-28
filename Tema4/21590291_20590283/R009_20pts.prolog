/*##R009##
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
"""*/
% uuid(+Str)
% Verdadero si Str es un UUID v4 válido en formato 8-4-4-4-12.
listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

uuid(Str) :-
    split_string(Str, "-", "", [G1,G2,G3,G4,G5]), % Separar por '-'
    % largo de los grupos del UUID
    string_length(G1, 8), % largo del G1 de 8
    string_length(G2, 4), % largo del G2 de 4
    string_length(G3, 4), % largo del G3 de 4
    string_length(G4, 4), % largo del G4 de 4
    string_length(G5, 12), % largo del G5 de 12
    
    % Validar el G1 tenga 8 hex
    string_to_liststring(G1, L1),
    maplist(hex_str, L1), % si es hexadecimal a cada elemento l1 de cada lista G1

    % Validar el G2 tenga 4 hex
    string_to_liststring(G2, L2),
    maplist(hex_str, L2), % si es hexadecimal a cada elemento l2 de cada lista G2

    % Validar el G3 inicie con '4' y tenga 3 hex
    string_to_liststring(G3, [V3S|R3S]),
    V3S = "4", % te obligo a que el primer carácter del grupo sea exactamente 4
    maplist(hex_str, R3S), % si es hexadecimal a cada elemento l3 de cada lista G3

    % Validar el G4 inicie con 8,9,a,b,A,B y tenga 3 hex
    string_to_liststring(G4, [V4S|R4S]),
    member(V4S, ["8","9","a","b","A","B"]), % te obligo a que el primer carácter sea uno de esos seis valores
    maplist(hex_str, R4S), % si es hexadecimal a cada elemento R4S de cada lista G4

    % Validar el grupo 5: 12 hex
    string_to_liststring(G5, L5),
    maplist(hex_str, L5). % si es hexadecimal a cada elemento l5 de cada lista G5

% Checar que un string de 1 carácter sea hex
hex_str(S) :-
    string_chars(S, [C]),   % pasamos de "a" a a
    hex_char(C).

% Carácter hexadecimal: 0-9, a-f, A-F
hex_char(C) :-
    char_type(C, digit). % validar del 0-9
hex_char(C) :-
    member(C, ['a','b','c','d','e','f', % validar de la a-f
               'A','B','C','D','E','F']). % validar de la A-F
