%escape(S): S es un string que representa un carácter de escape JSON válido

escape(S) :-
    string(S),
    string_chars(S, Chars),
    escape_chars(Chars).

%Casos de escape simples como "n", "b", "f", "\"", etc.
escape_chars(['"' ]).
escape_chars(['\\']).
escape_chars(['/']).
escape_chars(['b']).
escape_chars(['f']).
escape_chars(['n']).
escape_chars(['r']).
escape_chars(['t']).

%Caso del unicode: "uXXXX" donde XXXX son 4 dígitos hexadecimales
escape_chars(['u', D1, D2, D3, D4]) :-
    hex_digit(D1),
    hex_digit(D2),
    hex_digit(D3),
    hex_digit(D4).

%Hexadecimal válido
hex_digit(C) :-
    member(C, ['0','1','2','3','4','5','6','7','8','9',
               'a','b','c','d','e','f',
               'A','B','C','D','E','F']).
