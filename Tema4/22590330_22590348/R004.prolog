/*
##R004##
##10##
"""
Realice un predicado que valide el no terminal 'Fraction'

% fraction("").
% true
% fraction(".00").
% true
% fraction(".1416").
% true
*/



/******************************UNIVERSAL FORMULA*******************************************************/
listatom_liststring([],[]).
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).
convertir_string(Cadena,LCadenas) :- string_chars(Cadena,LAtomos), listatom_liststring(LAtomos,LCadenas).

punto(".").
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
nums([]). 
nums([H|T]) :- num(H), nums(T).
fraction_list([]).
fraction_list([P, D | Resto]) :- punto(P), num(D), nums(Resto).
fraction(Str) :- convertir_string(Str, Lista), fraction_list(Lista).