%"""
% ##R007##
% ##20##
% Realice un predicado que permita validar una variable en PHP
% https://www.php.net/manual/en/language.variables.basics.php
% 20 pts
%
% php_var("$hola").
% true.
% php_var("$_h").
% true.
% php_var("$h111").
% true.
% """
listatom_liststring([], []).
listatom_liststring([A], [C]) :- atom_string(A, C).
listatom_liststring([A|RA], [C|LCC]) :- 
	listatom_liststring(RA, LCC),
	atom_string(A, C).

string_to_liststring(Cadena, LCadenas) :- 
	string_chars(Cadena, LAtomos),
	listatom_liststring(LAtomos, LCadenas).

letra_may("A").
letra_may("B").
letra_may("C").
letra_may("D").
letra_may("E").
letra_may("F").
letra_may("G").
letra_may("H").
letra_may("I").
letra_may("J").
letra_may("K").
letra_may("L").
letra_may("M").
letra_may("N").
letra_may("O").
letra_may("P").
letra_may("Q").
letra_may("R").
letra_may("S").
letra_may("T").
letra_may("U").
letra_may("V").
letra_may("W").
letra_may("X").
letra_may("Y").
letra_may("Z").

letra_min("a").
letra_min("b").
letra_min("c").
letra_min("d").
letra_min("e").
letra_min("f").
letra_min("g").
letra_min("h").
letra_min("i").
letra_min("j").
letra_min("k").
letra_min("l").
letra_min("m").
letra_min("n").
letra_min("o").
letra_min("p").
letra_min("q").
letra_min("r").
letra_min("s").
letra_min("t").
letra_min("u").
letra_min("v").
letra_min("w").
letra_min("x").
letra_min("y").
letra_min("z").

digito("0").
digito("1").
digito("2").
digito("3").
digito("4").
digito("5").
digito("6").
digito("7").
digito("8").
digito("9").

guion_bajo("_").

primer_car(C) :- letra_may(C).
primer_car(C) :- letra_min(C).
primer_car(C) :- guion_bajo(C).

car_valido(C) :- letra_may(C).
car_valido(C) :- letra_min(C).
car_valido(C) :- digito(C).
car_valido(C) :- guion_bajo(C).

php_var(String) :-
	string_to_liststring(String, L),
	php_var_l(L).

php_var_l(["$", P | R]) :-
	primer_car(P),
	resto_valido(R).

resto_valido([]).
resto_valido([C | R]) :-
	car_valido(C),
	resto_valido(R).
