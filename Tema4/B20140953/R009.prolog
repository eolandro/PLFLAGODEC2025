/*
##R009##
##20##

Realice un predicado que valide un UUID v4

uuid("7eb36e8e-13ea-434f-a34e-a47d7ba28676").
true
uuid("1ffc0af2-7f0a-4114-bbc8-87c66eef1cc4").
true
uuid("422a4f74-e8a7-4567-aa3f-40c9fcc74993").
true
*/
hex_char(C) :-
    member(C,
        ['0','1','2','3','4','5','6','7','8','9',
         'a','b','c','d','e','f',
         'A','B','C','D','E','F']).

all_hex(Str) :-
    string_chars(Str, Cs),
    Cs \= [],
    maplist(hex_char, Cs).

uuid(Input) :-
    ( atom(Input) -> atom_string(Input, Str)
    ; string(Input) -> Str = Input
    ),
    split_string(Str, "-", "", Parts),
    Parts = [P1,P2,P3,P4,P5],
    string_length(P1, 8),
    string_length(P2, 4),
    string_length(P3, 4),
    string_length(P4, 4),
    string_length(P5, 12),
    string_chars(P3, ['4'|_]),
    string_chars(P4, [D1|_]), member(D1, ['8','9','a','b','A','B']),
    maplist(all_hex, Parts).
