/*
##R001##
##20##

JSON (JavaScript Object Notation) es un formato 
ligero de intercambio de datos. 
Leerlo y escribirlo es simple para humanos, 
mientras que para las máquinas es simple interpretarlo 
y generarlo. 

Su especificación se encuentra aquí.
https://www.json.org/json-es.html

Realice un predicado que valide una sentencia de 'Integer'
*/

% integer_s("1").
% true
% integer_s("10").
% true
% integer_s("-1").
% true

integer_s(Str) :-
	number_string(N, Str),
		integer(N).