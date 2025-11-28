/*##R001##
##20##

JSON (JavaScript Object Notation) es un formato 
ligero de intercambio de datos. 
Leerlo y escribirlo es simple para humanos, 
mientras que para las máquinas es simple interpretarlo 
y generarlo. 

Realice un predicado que valide una sentencia de 'Integer'

% integer_s("1").
% true
% integer_s("10").
% true
% integer_s("-1").
% true
*/

integer_s(Input) :-
    to_atom(Input, A),
    catch(atom_number(A, N), _, fail),
    integer(N).

to_atom(V, Out) :-
    (   atom(V) -> Out = V
    ;   string(V) -> string_to_atom(V, Out)
    ).