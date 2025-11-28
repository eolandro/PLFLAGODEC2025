listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C | LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).

string_to_liststring(Cadena,LCadenas) :- string_chars(Cadena,LAtomos),
	listatom_liststring(LAtomos,LCadenas).

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

nonzero("1").
nonzero("2").
nonzero("3").
nonzero("4").
nonzero("5").
nonzero("6").
nonzero("7").
nonzero("8").
nonzero("9").

digits_list([D]) :- digit(D).
digits_list([D|R]) :- digit(D), digits_list(R).

% Solo 0
unsigned_int(["0"]).
unsigned_int([D]) :- nonzero(D).
unsigned_int([D|R]) :- nonzero(D), digits_list(R).

integer_list(["-"|R]) :- unsigned_int(R).
integer_list(L) :- unsigned_int(L).

integer_s(Str) :- string_to_liststring(Str, LS), integer_list(LS).