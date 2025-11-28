listatom_liststring([A],LC):- atom_string(A,C), LC=[C].
listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).


fraction("").


digit("0"). 
digit("1"). 
digit("2"). 
digit("3"). 
digit("4").
digit("5"). 
digit("6"). 
digit("7"). 
digit("8"). 
digit("9").


digits([D]) :- digit(D).
digits([D|R]) :- digit(D), digits(R).


fraction(Str) :-
    string_to_liststring(Str, ["."|Rest]),
    digits(Rest).