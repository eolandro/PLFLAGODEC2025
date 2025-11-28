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

listatom_liststring([A],LC):- atom_string(A,C), LC=[C].

listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

d0("0").

n1a9("1").
n1a9("2").
n1a9("3").
n1a9("4").
n1a9("5").
n1a9("6").
n1a9("7").
n1a9("8").
n1a9("9").

digito(X) :- d0(X).
digito(X) :- n1a9(X).

mas_digitos([]).
mas_digitos([H|T]) :-
    digito(H),
    mas_digitos(T).

integer_s("0").
integer_s("-0").

integer_s(Str) :- string_to_liststring(Str, [H|T]),
    n1a9(H), mas_digitos(T).

integer_s(Str) :-
    string_to_liststring(Str, ["-",H|T]), n1a9(H), mas_digitos(T).
