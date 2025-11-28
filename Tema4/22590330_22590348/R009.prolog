/*
"""
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
*/

/******************************UNIVERSAL FORMULA*******************************************************/
listatom_liststring([],[]).
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).
convertir_string(Cadena,LCadenas) :- string_chars(Cadena,LAtomos), listatom_liststring(LAtomos,LCadenas).

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
hex("a").
hex("b").
hex("c").
hex("d").
hex("e").
hex("f").
hex("A").
hex("B").
hex("C").
hex("D").
hex("E").
hex("F").
guion("-").
pri_4b("8").
pri_4b("9"). 
pri_4b("a").
pri_4b("b").
pri_4b("A").
pri_4b("B").
pri_3b("4").
ver_hex(Resto, 0, Resto).
ver_hex([H|T], N, RestoFinal) :- N > 0, hex(H), NN is N - 1, ver_hex(T, NN, RestoFinal).
ver_g([H|Resto], Resto) :- guion(H).
uuid_list(L1) :-
    ver_hex(L1, 8, L2), ver_g(L2, L3),
    ver_hex(L3, 4, L4), ver_g(L4, L5),
    L5 = [V|RestoVersion], pri_3b(V), ver_hex(RestoVersion, 3, L6), ver_g(L6, L7),
    L7 = [Var|RestoVariant], pri_4b(Var), ver_hex(RestoVariant, 3, L8), ver_g(L8, L9),
    ver_hex(L9, 12, []).
uuid(Str) :- convertir_string(Str, Lista), uuid_list(Lista).