%uuid(Str): Str es un UUID v4 válido

uuid(Str) :-
    string(Str),
    split_string(Str, "-", "", Parts),
    Parts = [P1, P2, P3, P4, P5],
    valid_block(P1, 8),
    valid_block(P2, 4),
    valid_block_v4(P3),
    valid_block_variant(P4),
    valid_block(P5, 12).

%Bloque hexadecimal genérico de longitud requerida
valid_block(Block, Len) :-
    string_length(Block, Len),
    string_chars(Block, Chars),
    maplist(hex_digit, Chars).

%El bloque 3 debe empezar con '4'
valid_block_v4(Block) :-
    string_length(Block, 4),
    string_chars(Block, ['4' | Rest]),
    maplist(hex_digit, Rest).

%El bloque 4 debe comenzar con 8, 9, a, A, b, B
valid_block_variant(Block) :-
    string_length(Block, 4),
    string_chars(Block, [H | Rest]),
    member(H, ['8','9','a','A','b','B']),
    maplist(hex_digit, Rest).

%Dígito hexadecimal
hex_digit(C) :-
    member(C,
        ['0','1','2','3','4','5','6','7','8','9',
         'a','b','c','d','e','f',
         'A','B','C','D','E','F']).
