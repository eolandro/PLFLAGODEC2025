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


letra('A').
letra('B').
letra('C').
letra('D').
letra('E').
letra('F').
letra('G').
letra('H').
letra('I').
letra('J').
letra('K').
letra('L').
letra('M').
letra('N').
letra('O').
letra('P').
letra('Q').
letra('R').
letra('S').
letra('T').
letra('U').
letra('V').
letra('W').
letra('X').
letra('Y').
letra('Z').
letra('a').
letra('b').
letra('c').
letra('d').
letra('e').
letra('f').
letra('g').
letra('h').
letra('i').
letra('j').
letra('k').
letra('l').
letra('m').
letra('n').
letra('o').
letra('p').
letra('q').
letra('r').
letra('s').
letra('t').
letra('u').
letra('v').
letra('w').
letra('x').
letra('y').
letra('z').

n09('0').
n09('1').
n09('2').
n09('3').
n09('4').
n09('5').
n09('6').
n09('7').
n09('8').
n09('9').

primero(C) :- letra(C).
primero('_').

resto(C) :- letra(C).
resto(C) :- n09(C).
resto('_').

php_var(S) :-
    string(S),
    string_chars(S, ['$' | Resto]),
    Resto = [C1 | Cola],
    primero(C1),
    mascarac(Cola).

mascarac([]).
mascarac([C | R]) :- resto(C), mascarac(R).
