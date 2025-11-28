%##R001##
%##20##

listatom_liststring([A],[C]):-atom_string(A,C).

listatom_liststring([A|RA],[C|LCC]):-
    listatom_liststring(RA,LCC),
    atom_string(A,C).

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

entero([D]):-digito(D).
entero([D|DS]):-numero(D), digitos(DS).
entero(["-" , D]) :- digito(D).
entero(["-" , D | DS]) :- numero(D), digitos(DS).

digito("0").
digito(D):-numero(D).

digitos([D]) :- digito(D).
digitos([D|DS]) :- digito(D), digitos(DS).

numero("1").
numero("2").
numero("3").
numero("4").
numero("5").
numero("6").
numero("7").
numero("8").
numero("9").

integer_s(A):-
    string_to_liststring(A,L),
    entero(L).
