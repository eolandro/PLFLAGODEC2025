##R006##
##45##
"""
Recorrido en un grafo circular
Defina una funcion recursiva que imprima todos
los elementos de un grafo circular

A ? B ? C ? D ? E
?               ?
J ? I ? H ? G ? F


grafo("A","B").
grafo("B","C").
grafo("C","D").
grafo("D","E").
grafo("E","F").
grafo("F","G").
grafo("G","H").
grafo("H","I").
grafo("I","J").
grafo("J","A").



imp_graf_cir(Inicio,Limite).

imp_graf_cir("A","E").
#A
#B
#C
#D
#E
imp_graf_cir("A","G").
#A
#B
#C
#D
#E
#F
#G
imp_graf_cir("A","J").
#A
#B
#C
#D
#E
#F
#G
#H
#I
#J
"""
/* ----------- Ejercicio 6 ----------- */
grafo("A", "B").
grafo("B", "C").
grafo("C", "D").
grafo("D", "E").
grafo("E", "F").
grafo("F", "G").
grafo("G", "H").
grafo("H", "I").
grafo("I", "J").
grafo("J", "A").

imp_graf_cir(Nodo, Nodo) :- write("#"), write(Nodo), nl, !, true.

imp_graf_cir(Inicio, Limite) :- write("#"), write(Inicio), nl, grafo(Inicio, Siguiente), imp_graf_cir(Siguiente, Limite).

