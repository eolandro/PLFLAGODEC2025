##R006##
##40##
"""

Defina un predicado capaz de validar una direccion ipV6
sin comprimir
https://es.wikipedia.org/wiki/IPv6#Notaci%C3%B3n_para_las_direcciones_IPv6
40 pts

ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334")
true.
ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab")
true.
ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001")
true.
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


bloque([C | R], Resto) :- hexa(C), mashex(1, R, Resto).

mashex(N, [C | R], Resto) :-
    N < 4,
    hexa(C),
    N1 is N + 1,
    mashex(N1, R, Resto).

mashex(_, Resto, Resto).

restantes(1, Lista) :- bloque(Lista, []).

restantes(N, Lista) :-
    N > 1,
    bloque(Lista, R1),
    R1 = [':' | R2],
    N1 is N - 1,
    restantes(N1, R2).

ipv6(S) :-
    string(S),
    string_chars(S, Caracteres),
    restantes(8, Caracteres).
