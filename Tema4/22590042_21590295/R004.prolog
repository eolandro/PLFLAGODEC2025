digit('0').
digit('1').
digit('2').
digit('3').
digit('4').
digit('5').
digit('6').
digit('7').
digit('8').
digit('9').

fraction("").

fraction(S) :-
    string_chars(S, ['.' | Digits]),
    Digits \= [],
    all_digits(Digits).

all_digits([]).
all_digits([D|R]) :-
    digit(D),
    all_digits(R).
