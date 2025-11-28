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

% Valido post $...
first_char_after_dollar(C) :- letter(C).
first_char_after_dollar("_").

% Validos
var_char(C) :- letter(C).
var_char(C) :- digit(C).
var_char("_").

% Resto
var_rest([]).
var_rest([C|R]) :- var_char(C), var_rest(R).

php_var_list(["$", C|R]) :- first_char_after_dollar(C), var_rest(R).

php_var(Str) :- string_to_liststring(Str, LS), php_var_list(LS).