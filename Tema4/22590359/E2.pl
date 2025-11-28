%"""
% ##R002##
% ##10##
% Realice un predicado que valide una sentencia de 'Integer'
%
% integer_s("1").
% true
% integer_s("10").
% true
% integer_s("-1").
% true
%"""

listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    atom_string(A,C),
    listatom_liststring(RA,LCC).

string_to_liststring(Cadena,LCadenas):- 
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

digito("0").
digito("1").
digito("2").
digito("3").
digito("4").
digito("5").
digito("6").
digito("7").
digito("8").
digito("9").

integer_s(String) :-
    string_to_liststring(String,L),
    integer_l(L).

integer_l([D]) :-
    digito(D).

integer_l([D|R]) :-
    digito(D),
    integer_l(R).

integer_l(["-" | R]) :-
    R \= [],
    integer_l(R).

integer_l(["+" | R]) :-
    R \= [],
    integer_l(R).

