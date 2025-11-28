hex('0'). hex('1'). hex('2'). hex('3'). hex('4').
hex('5'). hex('6'). hex('7'). hex('8'). hex('9').
hex('a'). hex('b'). hex('c'). hex('d'). hex('e'). hex('f').
hex('A'). hex('B'). hex('C'). hex('D'). hex('E'). hex('F').

valid_ipv6_block(Str) :-
    string(Str),
    string_chars(Str, Chars),
    length(Chars, L),
    L >= 1, L =< 4,
    all_hex(Chars).

all_hex([]).
all_hex([C|R]) :-
    hex(C),
    all_hex(R).

ipv6(Str) :-
    string(Str),
    split_string(Str, ":", "", Partes),
    length(Partes, 8),            % Debe tener EXACTAMENTE 8 bloques
    maplist(valid_ipv6_block, Partes).
