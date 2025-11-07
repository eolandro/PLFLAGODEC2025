##R009##
##10##
"""
Combinar Listas

Una funcion toma dos listas L1 y L2, las une en una sola
combiando primer elemento de L1 con el primer elemento de L2.

Si una de las dos listas se agota simplemente une el resto de la lista a
la lista resultante


combina_listas([F|C],[G|D],R).

combina_listas([1,2,3],["a","b","c"],R).
R =  [1,"a",2,"b",3,"c"].


combina_listas([1],["a","b","c"],R).
R = [1,"a","b","c"]

combina_listas([1,2,3],["a"],R).
R = [1,"a",2,3]
"""
/* ----------- Ejercicio 9 ----------- */

combina_listas([], [], []).

combina_listas([], L2, L2).

combina_listas(L1, [], L1).

combina_listas([F|C], [G|D], [F, G | R]) :- combina_listas(C, D, R).
