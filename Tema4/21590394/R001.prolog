
integer_s(Str) :-
    string(Str),
    string_chars(Str, Chars),
    integer_chars(Chars).

%Caso con signo negativo
integer_chars(['-' | Digits]) :-
    Digits \= [],
    digits(Digits).

%Caso sin signo
integer_chars(Digits) :-
    digits(Digits).

%Uno o más dígitos
digits([D|Rest]) :-
    digit(D),
    digits_rest(Rest).

digits_rest([]).
digits_rest([D|Rest]) :-
    digit(D),
    digits_rest(Rest).

%Dígitos válidos
digit(Char) :-
    member(Char, ['0','1','2','3','4','5','6','7','8','9']).
