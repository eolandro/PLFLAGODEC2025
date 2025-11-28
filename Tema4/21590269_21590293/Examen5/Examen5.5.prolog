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

letter("a"). letter("b"). letter("c"). letter("d"). letter("e").
letter("f"). letter("g"). letter("h"). letter("i"). letter("j").
letter("k"). letter("l"). letter("m"). letter("n"). letter("o").
letter("p"). letter("q"). letter("r"). letter("s"). letter("t").
letter("u"). letter("v"). letter("w"). letter("x"). letter("y").
letter("z").
letter("A"). letter("B"). letter("C"). letter("D"). letter("E").
letter("F"). letter("G"). letter("H"). letter("I"). letter("J").
letter("K"). letter("L"). letter("M"). letter("N"). letter("O").
letter("P"). letter("Q"). letter("R"). letter("S"). letter("T").
letter("U"). letter("V"). letter("W"). letter("X"). letter("Y").
letter("Z").

% Validos caracter
atom_char(C) :- letter(C).
atom_char(C) :- digit(C).
atom_char("-").
atom_char("_").

% Validos Num
number_char(C) :- digit(C).
number_char("-").
number_char(".").

not_quote(C) :- C \= "\"".

% Match
valid_atom([C]) :- atom_char(C).
valid_atom([C|R]) :- atom_char(C), valid_atom(R).

valid_number([C]) :- number_char(C).
valid_number([C|R]) :- number_char(C), valid_number(R).

valid_string_content([]).
valid_string_content([C|R]) :- not_quote(C), valid_string_content(R).

% Valido: átomo, número, o "string"
element(E) :- valid_atom(E).
element(E) :- valid_number(E).
element(["\""|R]) :- append(Content, ["\""], R), valid_string_content(Content).

content([]).
content([" "|R]) :- content(R).
content(L) :- append(E, Rest, L), element(E), E \= [], content(Rest).

sexp_list(["(", ")"]).
sexp_list(["("|R]) :- append(Content, [")"], R), content(Content).

s_expr(Str) :- string_to_liststring(Str, LS), sexp_list(LS).