##R009##
##20##
"""
Realice un predicado que valide un UUID v4
https://en.wikipedia.org/wiki/Universally_unique_identifier
40 pts

uuid("7eb36e8e-13ea-434f-a34e-a47d7ba28676").
true
uuid("1ffc0af2-7f0a-4114-bbc8-87c66eef1cc4").
true
uuid("422a4f74-e8a7-4567-aa3f-40c9fcc74993").
true
"""

hexa('0').
hexa('1').
hexa('2').
hexa('3').
hexa('4').
hexa('5').
hexa('6').
hexa('7').
hexa('8').
hexa('9').
hexa('A').
hexa('B').
hexa('C').
hexa('D').
hexa('E').
hexa('F').
hexa('a').
hexa('b').
hexa('c').
hexa('d').
hexa('e').
hexa('f').

variante('8').
variante('9').
variante('a').
variante('b').
variante('A').
variante('B').

uuid(Cadena) :-
    string_chars(Cadena, L),
    validar_uuid(L).

validar_uuid(L) :-
    tomar(8, L, A, B),
    hexas(A),
    B = ['-'|C],
    tomar(4, C, D, E),
    hexas(D),
    E = ['-'|F],
    F = ['4'|G],
    tomar(3, G, H, I),
    hexas(H),
    I = ['-'|J],
    J = [K|L2],
    variante(K),
    tomar(3, L2, M, N),
    hexas(M),
    N = ['-'|O],
    tomar(12, O, P, Q),
    hexas(P),
    Q = [].

hexas([]).
hexas([C|R]) :-
    hexa(C),
    hexas(R).

tomar(0, Resto, [], Resto).
tomar(N, [X|R], [X|P], Resto) :-
    N > 0,
    N1 is N - 1,
    tomar(N1, R, P, Resto).
