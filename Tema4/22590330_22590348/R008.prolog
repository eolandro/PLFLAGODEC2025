/*
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

numhex(A,B) :- hex(A),hex(B).
numhex(Str) :- string_to_liststring(Str,[A,B]),numhex(A,B).

mac_ad(Str) :- split_string(Str,":","",R), R = [A,B,C,D,E,F],numhex(A),numhex(B),numhex(C),numhex(D),numhex(E),numhex(F).