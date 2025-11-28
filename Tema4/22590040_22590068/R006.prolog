%##R006##
%##40##

listatom_liststring([A],[C]):-atom_string(A,C).

listatom_liststring([A|RA],[C|LCC]):-
    listatom_liststring(RA,LCC),
    atom_string(A,C).

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).


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

grupos([A|R], R) :-hex(A).
grupos([A,B|R], R) :-hex(A), hex(B).
grupos([A,B,C|R], R) :-hex(A), hex(B), hex(C).
grupos([A,B,C,D|R], R) :-hex(A), hex(B), hex(C), hex(D).

puntos([":"|R], R).

validarIP(L) :-
    grupos(L, R1),  puntos(R1, R2),
    grupos(R2, R3), puntos(R3, R4),
    grupos(R4, R5), puntos(R5, R6),
    grupos(R6, R7), puntos(R7, R8),
    grupos(R8, R9), puntos(R9, R10),
    grupos(R10, R11), puntos(R11, R12),
    grupos(R12, R13), puntos(R13, R14),
    grupos(R14, []).

ipv6(L) :-
    string_to_liststring(L,LL),
    validarIP(LL).
