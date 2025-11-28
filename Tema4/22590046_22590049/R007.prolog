/*
##R007##
##20##
"""
Realice un predicado que permita validar una variable en PHP
https://www.php.net/manual/en/language.variables.basics.php
20 pts
php_var("$hola").
true.
php_var("$_h").
true.
php_var("$h111").
true.
"""
*/
listatom_liststring([A], LC) :-
    atom_string(A, C),
    LC = [C].
listatom_liststring([A|RA], LC) :-
    listatom_liststring(RA, LCC),
    atom_string(A, C),
    LC = [C|LCC].
string_to_liststring(Cadena, LCadenas) :-
    string_chars(Cadena, LAtomos),
    listatom_liststring(LAtomos, LCadenas).
php_var(Var) :-
    string(Var),
    string_to_liststring(Var, [S1|Resto]),
    S1 = "$",
    validar_nombre_php(Resto).
validar_nombre_php([C|Resto]) :-
    primer_char_php(C),
    validar_restantes_php(Resto).
validar_restantes_php([]).
validar_restantes_php([C|Resto]) :-
    char_php(C),
    validar_restantes_php(Resto).
primer_char_php(C) :- char_type(C, alpha).
primer_char_php(C) :- C = "_".
char_php(C) :- primer_char_php(C).
char_php(C) :- char_type(C, digit).
