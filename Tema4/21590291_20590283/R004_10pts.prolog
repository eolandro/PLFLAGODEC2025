
/*##R004##
##10##
"""
Realice un predicado que valide el no terminal 'Fraction'

% fraction("").
% true
% fraction(".00").
% true
% fraction(".1416").
% true
"""*/

listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).   % separar cadena en "caracteres"

% predicado que valide el no terminal 'Fraction'
fraction(Str) :-
    string_to_liststring(Str, LStr),
    fraction_strings(LStr).
fraction_strings([]). % Caso 1: sin parte fraccionaria -> lista vacía
fraction_strings(["."|DigitsS]) :-
    DigitsS \= [], % al menos un dígito
    maplist(digit_str, DigitsS). % Caso 2: "." seguido de uno o más dígitos

% Validacion de caractres a caracter y comprobacion de digitos
digit_str(S) :-
    string_chars(S, [C]),
    digit_char(C).
digit_char(C) :-
    char_type(C, digit). %validacion de digitos del '0'-'9'


