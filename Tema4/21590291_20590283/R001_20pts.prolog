/*
##R001##
##20##
"""
JSON (JavaScript Object Notation) es un formato 
ligero de intercambio de datos. 
Leerlo y escribirlo es simple para humanos, 
mientras que para las máquinas es simple interpretarlo 
y generarlo. 
Su especificacion se encuentra aqui.
https://www.json.org/json-es.html
Realice un predicado que valide una sentencia de 'Integer'
% integer_s("1").
% true
% integer_s("10").
% true
% integer_s("-1").
% true
"""
*/

integer_s(Str) :-
    string_chars(Str, Chars),
    signo_opt(Chars, R0),
    entero_sin_signo(R0).
% signo opcional
signo_opt(['-'|R], R).
signo_opt(L, L).
% parte numérica sin signo
entero_sin_signo(['0']). % solo "0" es válido
entero_sin_signo([D|R]) :-
    char_type(D, digit),
    D \= '0',
    resto_digitos(R). % primer dígito 1-9
% resto: 0 o más dígitos 0-9
resto_digitos([]).
resto_digitos([D|R]) :-
    char_type(D, digit),
    resto_digitos(R).
