%##R009##
%##20##

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

gruposD(["8",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposD(["9",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposD(["a",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposD(["b",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposD(["A",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposD(["B",X,Y,Z|R], R) :-hex(X), hex(Y), hex(Z).
gruposC(["4",B,C,D|R], R) :-hex(B), hex(C), hex(D).
gruposB([A,B,C,D|R], R) :-hex(A), hex(B), hex(C), hex(D).
gruposA([A,B,C,D,E,F,G,H|R], R) :-hex(A), hex(B), hex(C), hex(D),hex(E), hex(F), hex(G), hex(H).
gruposE([A,B,C,D,E,F,G,H,I,J,K,L|R], R) :-
    hex(A), hex(B), hex(C), hex(D),hex(E), hex(F), hex(G), hex(H),hex(I), hex(J), hex(K), hex(L).

guion(["-"|R], R).

validarUUID(L):-
    gruposA(L, R1),  guion(R1, R2),
    gruposB(R2, R3), guion(R3, R4),
    gruposC(R4, R5), guion(R5, R6),
    gruposD(R6, R7), guion(R7, R8),
    gruposE(R8, []).

uuid(L) :-
    string_to_liststring(L,LL),
    validarUUID(LL).