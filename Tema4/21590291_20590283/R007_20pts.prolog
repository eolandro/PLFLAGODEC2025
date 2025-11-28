/*##R007##
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
"""*/
listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).   % separa la cadena en caracteres
    
% Predicado que permita validar una variable en PHP
php_var(Str) :-
    string_to_liststring(Str, LStr), % convertir el Str en lista de strings
    LStr = ["$", Nom | Bre],  % Debe comenzar con "$" y tener al menos un carácter de nombre
    php_start_str(Nom), % Verificar que el primer carater se valido 
    maplist(php_tail_str, Bre). % Verificar que el siguiente caracter sea valido

% Validar caracteres para el nombre
php_start_str(S) :- % recibe S (un string) sea un solo carácter 
    string_chars(S, [C]),
    php_ini_char(C). 
php_tail_str(S) :-
    string_chars(S, [C]),
    php_sig_char(C).

% Validacion para nombre
php_ini_char(C) :-
    char_type(C, alpha); % validar A-Z o a-z
    C = '_' ; % validar el carácter de "_".
    php_extended(C). % validar cualquier carácter cuyo código ASCII entre 128 y 25

% Validar caracteres que son válidos para continuar el nombre
php_sig_char(C) :-
    char_type(C, alnum); % validar A-Z o a-z
    C = '_';% validar el carácter de "_".
    php_extended(C).% validar cualquier carácter cuyo código ASCII entre 128 y 25

% Compruebar si un carácter está en el rango de ASCII entre el 128–255
php_extended(C) :-
    char_code(C, Code),
    Code >= 128,
    Code =< 255.
