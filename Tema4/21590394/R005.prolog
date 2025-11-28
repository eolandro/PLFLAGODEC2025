%Utilidades previas (dígitos, letras)
digit('0'). digit('1'). digit('2'). digit('3'). digit('4').
digit('5'). digit('6'). digit('7'). digit('8'). digit('9').

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

%Quitar espacios alrededor
trim([' '|R],Out) :- trim(R,Out).
trim(['\t'|R],Out) :- trim(R,Out).
trim([X|R],[X|R]) :- X \= ' ', X \= '\t'.
trim([],[]).

%STRING: "hola", "Leonardo", "Hola Mundo"
string_json(['"'|R]) :- string_inside(R).

string_inside(['"']).   % fin
string_inside([_|R]) :- string_inside(R).


%INTEGER: 10, -1, 999
integer_chars(['-',D|R]) :- digit(D), digits(R).
integer_chars([D|R]) :- digit(D), digits(R).

digits([]).
digits([D|R]) :- digit(D), digits(R).

%FLOAT: 2.54  3.14  10.0  -1.5
float_chars(Chars) :-
    append(Int, ['.'|Frac], Chars),
    integer_chars(Int),
    digits(Frac).

%IDENTIFICADOR SIMPLE: Nombre, Carrera, Hola, x32
ident([H|T]) :-
    (letter(H); H == '_'),
    ident_rest(T).

ident_rest([]).
ident_rest([C|R]) :-
    (letter(C); digit(C); C == '_'),
    ident_rest(R).

%Un "elemento" de la S-expr
element(Chars) :- string_json(Chars).
element(Chars) :- integer_chars(Chars).
element(Chars) :- float_chars(Chars).
element(Chars) :- ident(Chars).


%Particionar por espacios (solo uno o más)
split([],[],[]).
split([' '|R],[],Rest) :- trim(R,Rest).   % varios espacios
split([X|R],[X|A],Rest) :-
    X \= ' ',
    split(R,A,Rest).

split_list([],[]).
split_list([' '|R],L) :- trim([' '|R],NR), split_list(NR,L).
split_list(Chars,[T|R]) :-
    split(Chars,T,Rest),
    split_list(Rest,R).


%Validador de S-expression
s_expr(Str) :-
    string(Str),
    string_chars(Str, Chars),
    trim(Chars, ['('|Mid]),
    reverse(Mid, Rev),
    trim(Rev,[')'|Rev2]),
    reverse(Rev2,Inside),
    trim(Inside,Trimmed),
    validate_inside(Trimmed).

validate_inside([]).   % caso: () vacío
validate_inside(Chars) :-
    split_list(Chars, Tokens),
    maplist(element,Tokens).
