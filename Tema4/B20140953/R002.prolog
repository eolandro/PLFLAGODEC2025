/*
##R002##
##10##

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
*/

escape(S) :-
    esc_base(S).

escape(S) :-
    string_chars(S, ['u'|Cs]),
    length(Cs, 4),
    all_hex(Cs).

esc_base("\"").
esc_base("\\").
esc_base("/").
esc_base("b").
esc_base("f").
esc_base("n").
esc_base("r").
esc_base("t").

all_hex([]).
all_hex([C|R]) :-
    hex_ok(C),
    all_hex(R).

hex_ok(C) :-
    member(C,
        ['0','1','2','3','4','5','6','7','8','9',
         'a','b','c','d','e','f',
         'A','B','C','D','E','F']).
