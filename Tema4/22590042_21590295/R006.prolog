hex("0").
hex("1").
hex("2").
hex("3").
hex("4").
hex("5").
hex("6").
hex("7").
hex("8").
hex("9").
hex("A").
hex("B").
hex("C").
hex("D").
hex("E").
hex("F").
hex("a").
hex("b").
hex("c").
hex("d").
hex("e").
hex("f").

listatom_liststring([A], [C]) :- atom_string(A, C).
listatom_liststring([A|R], [C|RR]) :- atom_string(A, C), listatom_liststring(R, RR).

string_to_liststring(Cadena, Lista) :- string_chars(Cadena, LA), listatom_liststring(LA, Lista).

grupo([A,B,C,D]) :- hex(A), hex(B), hex(C), hex(D).

divide_ipv6([], [[]]).
divide_ipv6([":"|R], [[]|T]) :- divide_ipv6(R, T).
divide_ipv6([C|R], [[C|G]|T]) :- divide_ipv6(R, [G|T]).

ocho_grupos([A,B,C,D,E,F,G,H]) :- grupo(A), grupo(B), grupo(C), grupo(D),
                                 grupo(E), grupo(F), grupo(G), grupo(H).

ipv6(Cadena) :- string_to_liststring(Cadena, Lista), divide_ipv6(Lista, Grupos), ocho_grupos(Grupos).
