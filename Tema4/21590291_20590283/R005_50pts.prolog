
/* ##R005##
##50##
"""
S-expression es la notacion base de los lenguajes
derivados de lisp. Aqui hay algunos ejemplos
( Nombre "Leonardo" Carrera "Sistemas")
( 10 20 30 40 )
( 2.54 2 "hola" -1 3.14)
()



% Defina un predicado capaz de validar una S- expression
% Basandose en los ejemplos presentados
% 40 puntos
% s_expr("(Nombre \"Leonardo\")").
% true.
% s_expr("(\"Hola Mundo\")").
% true.
% s_expr("( 10 20 30 40 )").
% true.
"""
*/

% Convertir las cadenas en caracteres
listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

% S-expression para saber si la expresion es de lenguajes derivados de lisp
s_expr(Str) :-
    string_to_liststring(Str, LStr),
    limpar(LStr, R0),
    parse_str("(", R0, R1),
    limpar(R1, R2),
    verificar(R2, R3),
    limpar(R3, R4),
    parse_str(")", R4, R5),
    limpar(R5, []).

% Verificación de elementos
verificar(L, L). % cero elementos
verificar(L0, Lf) :- elementos(L0, Lf). % uno o más
elementos(L0, Lf) :- 
    elemento(L0, R1),
    limpar(R1, R2),
    elementosl(R2, Lf). % reconce al menos un elemento
elementosl(L, L). % no hay más elementos
elementosl(L0, Lf) :-
    elemento(L0, R1),
    limpar(R1, R2),
    elementosl(R2, Lf).

elemento(L0, Lf) :- tfloat(L0, Lf). % para token de tipo flotante 
elemento(L0, Lf) :- tint(L0, Lf). % para token de tipo int
elemento(L0, Lf) :- tsimbolo(L0, Lf). % para token de tipo char
elemento(L0, Lf) :- tstring(L0, Lf). % para token de tipo string

% Tokens  (símbolos, números y cadenas)
% reconocer simbolos...
tsimbolo([S|R0], Rf) :-
    string_chars(S, [C]),
    char_type(C, alpha),
    resto_sim(R0, Rf). % reconoce los símbolo tipo Lisp
resto_sim([S|R0], Rf) :-
    string_chars(S, [C]),
    (char_type(C, alnum) ; C = '_' ),
    resto_sim(R0, Rf).
resto_sim(L, L).

% reconocer enteros...
tint(L0, Lf) :-
    sign(L0, R0),
    digits(R0, Lf). % reconoce un entero
sign(["-"|R], R). % reconocer si hay simbolo "-"
sign(L, L). % si no hay signo

digits([S|R0], Rf) :-
    string_chars(S, [D]),
    char_type(D, digit),
    resto_int(R0, Rf).

resto_int([S|R0], Rf) :-
    string_chars(S, [D]),
    char_type(D, digit),
    resto_int(R0, Rf).
resto_int(L, L).

% reconocer flotantes...
tfloat(L0, Lf) :-
    sign(L0, R0),
    digits(R0, R1),
    parse_str(".", R1, R2),
    digits(R2, Lf). %  reconoce un número flotante

% reconocer cadenas entre comillas...
tstring(["\""|R0], Rf) :-
    cadena(R0, ["\""|Rf]). % reconoce strings entre comillas dobles

cadena(["\""|R], ["\""|R]). % si el siguiente elemento es otra comilla 
cadena([S|R0], Rf) :-
    string_chars(S, [C]),
    C \= '"',
    cadena(R0, Rf). % consumir el contenido hasta la comilla de cierre

% limpiar espacion en blanco
limpar([S|R0], Rf) :-
    string_chars(S, [C]),
    char_type(C, space),
    limpar(R0, Rf).
limpar(L, L).
parse_str(S, [S|R], R).

