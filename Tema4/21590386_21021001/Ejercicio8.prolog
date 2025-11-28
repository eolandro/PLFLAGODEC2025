##R008##
##20##
"""
Realice un predicado que valide una direccion mac
20 pts

mac_ad("08:9e:01:6f:2e:41").
true
mac_ad("ff:ff:01:6f:2e:41").
true
mac_ad("00:00:00:00:00:00").
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

mac_ad(S) :-
    string(S),
    string_chars(S,
        [ A, B, ':',
          C, D, ':',
          E, F, ':',
          G, H, ':',
          I, J, ':',
          K, L ]),
    hexa(A), hexa(B),
    hexa(C), hexa(D),
    hexa(E), hexa(F),
    hexa(G), hexa(H),
    hexa(I), hexa(J),
    hexa(K), hexa(L).
