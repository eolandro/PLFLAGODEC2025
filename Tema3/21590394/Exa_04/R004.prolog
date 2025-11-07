##R004##
##20##
"""
Mapa del tesoro

Un pirata ha escondido un tesoro en una isla
para saber su ubicacion ha realizado un mapa que
describe cuantos pasos debe caminar desde un punto 
conocido para encontrarlo.

para realizar lo anterior ha definido unos simbolos
que le ayudan a determinar la posicion y la cantidad de
pasos

A =  arriba
V =  abajo
> =  derecha
< =  izquierda

Ejemplo:

2 Pasos a la derecha y 3 abajo

equivale a

>>VVV


3 arriba, 1 izquierda y 2 abajo

AAA<VV

Realiza un predicado en prolog que resuelva donde esta el tesoro
dada una lista de simbolos y un punto PX,PY inicial considerando que:

arriba ==> incrementa Y
abajo  ==> decrementa Y
derecha ==> incrementa X
izquierda ==> decrementa X

/* pirata([F|C],PX,PY,RX,RY). */ 
pirata(["A","A","A","<","V","V"],0,0,RX,RY).
RX = -1.
RY = 1.
true.

pirata(["A","A","A","<","V","V"],5,5,RX,RY).
RX = 4.
RY = 6.
true.

pirata(["A","A","A","<","V","V"],0,-2,RX,RY).
RX = -1.
RY = -1.
true.
"""

pirata(Lista, PX, PY, RX, RY) :-
    contar_pasos(Lista, AX, AY),
    RX is PX + AX,
    RY is PY + AY.

contar_pasos(["A" | Resto], X, Y) :-
    contar_pasos(Resto, X1, Y1),
    X is X1,
    Y is Y1 + 1.

contar_pasos(["V" | Resto], X, Y) :-
    contar_pasos(Resto, X1, Y1),
    X is X1,
    Y is Y1 - 1.

contar_pasos([">" | Resto], X, Y) :-
    contar_pasos(Resto, X1, Y1),
    X is X1 + 1,
    Y is Y1.

contar_pasos(["<" | Resto], X, Y) :-
    contar_pasos(Resto, X1, Y1),
    X is X1 - 1,
    Y is Y1.
