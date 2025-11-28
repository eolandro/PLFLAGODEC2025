/*
##R003##
##10##
"""
Realice un predicado que valide el no terminal 'Escape'

% escape("\"").
% true
% escape("n").
% true
% escape("b").
% true
% escape("u0000").
% true
"""*/
listatom_liststring([A],[C]) :-
    atom_string(A,C).

listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).

string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas). % separar cadena en "caracteres" (strings de 1 char)

% Predicado que valide el no terminal 'Escape'
escape(Str) :-
    string_to_liststring(Str, Cs), % varifica si es valido por ejemplo "\"n\"" -> ["n"/]
    escape_strings(Cs).

% Escapes simples de un carácter
escape_strings(["\""]). % valida \" 
escape_strings(["\\"]). % valida \\ 
escape_strings(["/"]). % valida \/ 
escape_strings(["b"]). % valida \b 
escape_strings(["f"]). % valida \f 
escape_strings(["n"]). % valida \n 
escape_strings(["r"]). % valida \r 
escape_strings(["t"]). % valida \t 

% Escape Unicode valida que inice con "u" y tenga 4 dígitos hexadecimales
escape_strings(["u",D1,D2,D3,D4]) :-
    hex_str(D1),
    hex_str(D2),
    hex_str(D3),
    hex_str(D4).

% Adaptador: string de 1 carácter -> carácter y reutilizar hex_digit/1
hex_str(S) :-
    string_chars(S, [C]),
    hex_digit(C).

% Dígito hexadecimal: 0-9, a-f, A-F
hex_digit(C) :-
    char_type(C, digit).
hex_digit(C) :-
    member(C, ['a','b','c','d','e','f',
               'A','B','C','D','E','F']).
