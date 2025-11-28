digit('0'). digit('1'). digit('2'). digit('3'). digit('4').
digit('5'). digit('6'). digit('7'). digit('8'). digit('9').

letter('a'). letter('h'). letter('o'). letter('l').
letter('A'). letter('H').

underscore('_').

php_start_char(C) :- letter(C).
php_start_char(C) :- underscore(C).

php_continue_char(C) :- php_start_char(C).
php_continue_char(C) :- digit(C).

validate_tail([]).
validate_tail([C|R]) :-
    php_continue_char(C),
    validate_tail(R).

php_var(S) :-
    string_chars(S, ['$', C2 | Rest]),
    php_start_char(C2),
    validate_tail(Rest).
