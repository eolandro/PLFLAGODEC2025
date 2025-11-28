/*
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
*/

listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC),atom_string(A,C).
string_to_liststring(Cadena,LCadenas):-string_chars(Cadena,LAtomos),listatom_liststring(LAtomos,LCadenas).
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

numhex([]).
numhex([P|R]) :- hex(P), numhex(R) .

grupohex(Str) :- string_to_liststring(Str,C),length(C,D), (D = 3; D = 4), numhex(C).

ipv6(Str) :- split_string(Str,":","",R), R = [A,B,C,D,E,F,G,H],grupohex(A),grupohex(B),grupohex(C),grupohex(D),grupohex(E),grupohex(F),grupohex(G),grupohex(H).