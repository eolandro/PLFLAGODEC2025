"""
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

% --------- Ejercicio 4 ----------

pirata([], PX, PY, PX, PY).

% Si el primer movimiento es arriba (A):
pirata(["A" | Cola], PX, PY, RX, RY) :- NY is PY + 1, pirata(Cola, PX, NY, RX, RY).

% Si el primer movimiento es abajo (V):
pirata(["V" | Cola], PX, PY, RX, RY) :- NY is PY - 1, pirata(Cola, PX, NY, RX, RY).

% Si el primer movimiento es derecha (>):
pirata([">" | Cola], PX, PY, RX, RY) :- NX is PX + 1, pirata(Cola, NX, PY, RX, RY).

% Si el primer movimiento es izquierda (<):
pirata(["<" | Cola], PX, PY, RX, RY) :- NX is PX - 1, pirata(Cola, NX, PY, RX, RY).
