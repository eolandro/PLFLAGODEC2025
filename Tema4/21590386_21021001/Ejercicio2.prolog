##R002##
##10##
"""
Realice un predicado que valide el no terminal 'Escape'
Segun la especificacion de json. 10 pts

% escape("\"").
% true
% escape("n").
% true
% escape("b").
% true
% escape("u0000").
% true
"""


esc("\"").
esc("\\").
esc("/").
esc("b").
esc("f").
esc("n").
esc("r").
esc("t").

hex('0').
hex('1').
hex('2').
hex('3').
hex('4').
hex('5').
hex('6').
hex('7').
hex('8').
hex('9').
hex('A').
hex('B').
hex('C').
hex('D').
hex('E').
hex('F').

eschex('u', A, B, C, D) :- hex(A), hex(B), hex(C), hex(D).

escape(A) :- esc(A).

escape(S) :-
    string(S),
    string_chars(S, ['u', A, B, C, D]),
    eschex('u', A, B, C, D).
