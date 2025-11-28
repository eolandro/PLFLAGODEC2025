%mac_ad(Str): Str es una dirección MAC válida en formato XX:XX:XX:XX:XX:XX

mac_ad(Str) :-
    string(Str),
    split_string(Str, ":", "", Partes),
    length(Partes, 6),
    maplist(valid_hex_pair, Partes).

%Un bloque válido debe tener exactamente 2 hex dígitos
valid_hex_pair(P) :-
    string_length(P, 2),
    string_chars(P, [C1, C2]),
    hex_digit(C1),
    hex_digit(C2).

%Dígitos hexadecimales válidos
hex_digit(C) :-
    member(C, ['0','1','2','3','4','5','6','7','8','9',
               'a','b','c','d','e','f',
               'A','B','C','D','E','F']).
