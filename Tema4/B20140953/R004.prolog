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

fraction(S) :-
    S = "".

fraction(S) :-
    string_chars(S, ['.'|Cs]),
    Cs \= [],
    digits_ok(Cs).

digits_ok([]).
digits_ok([C|R]) :-
    member(C, ['0','1','2','3','4','5','6','7','8','9']),
    digits_ok(R).
