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
"""

n19('0').
n19('1').
n19('2').
n19('3').
n19('4').
n19('5').
n19('6').
n19('7').
n19('8').
n19('9').

fraction("").

fraction(S) :-
    string(S),
    string_chars(S, ['.' | Resto]),
    Resto \= [],
    completo(Resto).

completo([]).
completo([C | R]) :- n19(C), completo(R).

