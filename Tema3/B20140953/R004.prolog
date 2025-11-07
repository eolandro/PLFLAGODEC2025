/*
##R004##
##20##

Mapa del tesoro

Un pirata ha escondido un tesoro en una isla para saber su ubicacion ha realizado un mapa que describe cuantos pasos debe caminar desde un punto conocido para encontrarlo.

para realizar lo anterior ha definido unos símbolos que le ayudan a determinar la posicion y la cantidad de pasos

A =  arriba
V =  abajo
> =  derecha
< =  izquierda

Realiza un predicado en prolog que resuelva donde esta el tesoro
dada una lista de simbolos y un punto PX,PY inicial considerando que:

arriba ==> incrementa Y
abajo  ==> decrementa Y
derecha ==> incrementa X
izquierda ==> decrementa X

*/


% Caso base
pirata([], X, Y, X, Y).

% Movimiento hacia arriba
pirata(["A" | Movs], X, Y, RX, RY) :-
    Ytemp is Y + 1,
    pirata(Movs, X, Ytemp, RX, RY).

% Movimiento hacia abajo
pirata(["V" | Movs], X, Y, RX, RY) :-
    Ytemp is Y - 1,
    pirata(Movs, X, Ytemp, RX, RY).

% Movimiento hacia la derecha
pirata([">" | Movs], X, Y, RX, RY) :-
    Xtemp is X + 1,
    pirata(Movs, Xtemp, Y, RX, RY).

% Movimiento hacia la izquierda
pirata(["<" | Movs], X, Y, RX, RY) :-
    Xtemp is X - 1,
    pirata(Movs, Xtemp, Y, RX, RY).