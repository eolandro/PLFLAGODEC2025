/*
##R004##
##10##
Realice un predicado que valide el no terminal 'Fraction'

% fraction("").
% true
% fraction(".00").
% true
% fraction(".1416").
% true
*/

listatom_liststring([A],LC):- atom_string(A,C), LC = [C].

listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), 
    LC = [C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

fraction("").

fraction(Str) :-
    string_to_liststring(Str, [".",D|Resto]),
    digito(D),
    solo_digitos(Resto).

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

solo_digitos([]).
solo_digitos([X|Xs]) :- digito(X), solo_digitos(Xs).
