##R006##
##45##
"""
Recorrido en un grafo circular
Defina una funcion recursiva que imprima todos
los elementos de un grafo circular

A → B → C → D → E
↑               ↓
J → I → H → G → F


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

imp_graf_cir(Limite,Limite) :- write(Limite).

imp_graf_cir(Inicio,Limite) :- write(Inicio),
								nl,grafo(Inicio,Continua),
								imp_graf_cir(Continua,Limite).
