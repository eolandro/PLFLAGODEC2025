/*

##R007##
##20##
Realice un predicado que permita validar una variable en PHP

php_var("$hola").
true.
php_var("$_h").
true.
php_var("$h111").
true.
*/

php_var(X) :-
    ( atom(X)   -> atom_chars(X, Cs)
    ; string(X) -> string_chars(X, Cs)
    ),
    Cs = ['$'|Rs],
    Rs = [F|Rest],
    start(F),
    maplist(rest, Rest).

start(C) :-
    char_type(C, alpha) ; C = '_'.

rest(C) :-
    char_type(C, alnum) ; C = '_'.
