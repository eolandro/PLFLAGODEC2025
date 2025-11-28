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

listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC),atom_string(A,C).
string_to_liststring(Cadena,LCadenas):-string_chars(Cadena,LAtomos),listatom_liststring(LAtomos,LCadenas).

contx("$").
letras(E) :- is_alpha(E),is_upper(E);is_lower(E).
n19("0").
n19("1").
n19("2").
n19("3").
n19("4").
n19("5").
n19("6").
n19("7").
n19("8").
n19("9").
under("_").

valse([]).
valse([H|T]) :- (letras(H);n19(H);under(H)),valse(T).

% Inicia con letra (A-Z, a-z) o guion bajo (_), no puede tener espacios
php_var(Str) :- string_to_liststring(Str,[P|R]),contx(C),P = C, R = [S|_],letras(S),valse(R).
php_var(Str) :- string_to_liststring(Str,[P|R]),contx(C),P = C, R = [S|_],under(S),valse(R).