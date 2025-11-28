listatom_liststring([A],LC):- atom_string(A,C), LC=[C].
listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).


letter("A"). letter("B"). letter("C"). letter("D"). letter("E"). letter("F").
letter("G"). letter("H"). letter("I"). letter("J"). letter("K"). letter("L").
letter("M"). letter("N"). letter("O"). letter("P"). letter("Q"). letter("R").
letter("S"). letter("T"). letter("U"). letter("V"). letter("W"). letter("X").
letter("Y"). letter("Z").
letter("a"). letter("b"). letter("c"). letter("d"). letter("e"). letter("f").
letter("g"). letter("h"). letter("i"). letter("j"). letter("k"). letter("l").
letter("m"). letter("n"). letter("o"). letter("p"). letter("q"). letter("r").
letter("s"). letter("t"). letter("u"). letter("v"). letter("w"). letter("x").
letter("y"). letter("z").
letter("_").



digit("0"). digit("1"). digit("2"). digit("3"). digit("4").
digit("5"). digit("6"). digit("7"). digit("8"). digit("9").


identifier([L]) :- letter(L).
identifier([L|R]) :- letter(L), identifier_tail(R).

identifier_tail([]).
identifier_tail([C|R]) :- (letter(C); digit(C)), identifier_tail(R).


php_var(Str) :-
    string_to_liststring(Str, ["$"|Rest]),
    identifier(Rest).