listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).

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

% Lista
digits_list([D]) :- digit(D).
digits_list([D|R]) :- digit(D), digits_list(R).

% Vacio
fraction_list([]).
fraction_list([".",D|R]) :- digit(D), digits_list(R).
fraction_list([".",D]) :- digit(D).

% Vacio 2
fraction_s("").
fraction_s(Str) :- Str \= "", string_to_liststring(Str, LS), fraction_list(LS).