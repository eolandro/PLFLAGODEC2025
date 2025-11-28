listatom_liststring([A],LC):- atom_string(A,C), LC=[C].
listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).


hex("0"). hex("1"). hex("2"). hex("3"). hex("4").
hex("5"). hex("6"). hex("7"). hex("8"). hex("9").
hex("a"). hex("b"). hex("c"). hex("d"). hex("e"). hex("f").
hex("A"). hex("B"). hex("C"). hex("D"). hex("E"). hex("F").


mac_ad(Str) :-
    string_to_liststring(Str,
        [A1,A2,":",B1,B2,":",C1,C2,":",D1,D2,":",E1,E2,":",F1,F2]),
    hex(A1), hex(A2),
    hex(B1), hex(B2),
    hex(C1), hex(C2),
    hex(D1), hex(D2),
    hex(E1), hex(E2),
    hex(F1), hex(F2).