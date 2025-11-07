/*
##R009##
##10##
Combinar Listas 

Una funcion toma dos listas L1 y L2, las une en una sola
combiando primer elemento de L1 con el primer elemento de L2.

Si una de las dos listas se agota simplemente une el resto de la lista a
la lista resultante
*/


combina_listas([], L, L).
combina_listas(L, [], L).

combina_listas([Primero|Resto1], [Segundo|Resto2], [Primero, Segundo | Resultado]) :-
    combina_listas(Resto1, Resto2, Resultado).
