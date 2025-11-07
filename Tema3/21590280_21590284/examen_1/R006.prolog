% #R005
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

imp_graf_cir(Nodo, Nodo) :-
    write(Nodo), nl.

imp_graf_cir(Inicio, Fin) :-
    write(Inicio), nl,
    grafo(Inicio, Siguiente),
    imp_graf_cir(Siguiente, Fin).

/*
?- imp_graf_cir("A", "E").
A
B
C
D
E
true 
*/