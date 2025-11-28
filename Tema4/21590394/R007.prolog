letter('a'). letter('b'). letter('c'). letter('d'). letter('e').
letter('f'). letter('g'). letter('h'). letter('i'). letter('j').
letter('k'). letter('l'). letter('m'). letter('n'). letter('o').
letter('p'). letter('q'). letter('r'). letter('s'). letter('t').
letter('u'). letter('v'). letter('w'). letter('x'). letter('y').
letter('z').
letter('A'). letter('B'). letter('C'). letter('D'). letter('E').
letter('F'). letter('G'). letter('H'). letter('I'). letter('J').
letter('K'). letter('L'). letter('M'). letter('N'). letter('O').
letter('P'). letter('Q'). letter('R'). letter('S'). letter('T').
letter('U'). letter('V'). letter('W'). letter('X'). letter('Y').
letter('Z').

digit('0'). digit('1'). digit('2'). digit('3'). digit('4').
digit('5'). digit('6'). digit('7'). digit('8'). digit('9').

valid_char(C) :- letter(C).
valid_char(C) :- digit(C).
valid_char('_').

php_var(Str) :-
    string(Str),
    string_chars(Str, ['$', First | Rest]),
    (letter(First) ; First == '_'),
    all_valid(Rest).

all_valid([]).
all_valid([C|R]) :-
    valid_char(C),
    all_valid(R).
