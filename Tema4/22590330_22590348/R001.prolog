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
*/

% integer_s("1").
% true
% integer_s("10").
% true
% integer_s("-1").
% true



/******************************UNIVERSAL FORMULA*******************************************************/
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).
convertir_string(Cadena,LCadenas) :- string_chars(Cadena,LAtomos), listatom_liststring(LAtomos,LCadenas).

n1n9("1").
n1n9("2").
n1n9("3"). 
n1n9("4").
n1n9("5").
n1n9("6"). 
n1n9("7").
n1n9("8").
n1n9("9").
n0("0").
num(X) :- n0(X).
num(X) :- n1n9(X).
neg("-").
nums([]).
nums([H|T]) :- num(H), nums(T).
json_int_list(["0"]).
json_int_list(["-", "0"]).
json_int_list([H|T]) :- n1n9(H), nums(T).
json_int_list([M, H|T]) :- neg(M), n1n9(H), nums(T).
integer_s(Str) :- convertir_string(Str, Lista),json_int_list(Lista).