%bcrypt(Str): verdadero si Str es un hash bcrypt válido

bcrypt(Str) :-
    string(Str),
    string_chars(Str, ['$', '2', V, '$', C1, C2, '$' | Rest]),
    member(V, ['a','b','y']),          % versión válida
    digit(C1), digit(C2),              % factor de costo 00-99
    number_chars(Cost, [C1,C2]),
    Cost >= 4, Cost =< 31,             % bcrypt requiere cost entre 4 y 31
    length(Rest, 53),                  % salt (22) + hash (31) = 53 chars
    valid_bcrypt_chars(Rest).

%dígito 0-9
digit(C) :- member(C, ['0','1','2','3','4','5','6','7','8','9']).

%caracteres válidos del alfabeto bcrypt
valid_bcrypt_chars([]).
valid_bcrypt_chars([C|R]) :-
    member(C,
        ['.','/',
         '0','1','2','3','4','5','6','7','8','9',
         'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
         'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']),
    valid_bcrypt_chars(R).
