##R010##
##50##
"""
Realice un predicado que valide un hash de bcrypt
https://en.wikipedia.org/wiki/Bcrypt#Description
40 pts

bcrypt("$2a$12$3oUINuVy1UCI0HpeT43QqOkgaxScqa0meG.KwqhcEDsHb7N.ZDsHa").
true
bcrypt("$2a$09$8eVlg43oGdXq2wWj4iIzneRE7HTdNuWjFiWqKSYKo2j.CdQvlAfWe").
true
"""


b64('.').
b64('/').
b64('A').
b64('B').
b64('C').
b64('D').
b64('E').
b64('F').
b64('G').
b64('H').
b64('I').
b64('J').
b64('K').
b64('L').
b64('M').
b64('N').
b64('O').
b64('P').
b64('Q').
b64('R').
b64('S').
b64('T').
b64('U').
b64('V').
b64('W').
b64('X').
b64('Y').
b64('Z').
b64('a').
b64('b').
b64('c').
b64('d').
b64('e').
b64('f').
b64('g').
b64('h').
b64('i').
b64('j').
b64('k').
b64('l').
b64('m').
b64('n').
b64('o').
b64('p').
b64('q').
b64('r').
b64('s').
b64('t').
b64('u').
b64('v').
b64('w').
b64('x').
b64('y').
b64('z').
b64('0').
b64('1').
b64('2').
b64('3').
b64('4').
b64('5').
b64('6').
b64('7').
b64('8').
b64('9').

dig('0').
dig('1').
dig('2').
dig('3').
dig('4').
dig('5').
dig('6').
dig('7').
dig('8').
dig('9').

id('a').
id('b').
id('x').
id('y').
id('A').
id('B').
id('X').
id('Y').

bcrypt(Cadena) :- string_chars(Cadena, L), validar_bcrypt(L).


validar_bcrypt(L) :-

    L = ['$', '2', V, '$', D1, D2, '$' | R],
    id(V),
    costo_valido(D1, D2),
    tomar(22, R, A, B),
    todos_b64(A),
    tomar(31, B, C, D),
    todos_b64(C),
    D = [].

todos_b64([]).
todos_b64([C | R]) :- b64(C), todos_b64(R).

costo_valido(D1, D2) :-
    dig(D1),
    dig(D2),
    (
        D1 = '0',
        en_lista(D2, ['4','5','6','7','8','9'])
    ;
        en_lista(D1, ['1','2']),
        dig(D2)
    ;
        D1 = '3',
        en_lista(D2, ['0','1'])
    ).

en_lista(X, [X | _]).
en_lista(X, [_ | R]) :- en_lista(X, R).

tomar(0, Resto, [], Resto).
tomar(N, [X | R], [X | P], Resto) :-
    N > 0,
    N1 is N - 1,
    tomar(N1, R, P, Resto).

