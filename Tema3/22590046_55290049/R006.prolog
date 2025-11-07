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

imp_graf_cir(Inicio, Fin) :-
    Inicio = Fin,
    write(Fin), nl.

imp_graf_cir(Inicio, Fin) :-
    grafo(Inicio, Siguiente),
    write(Inicio), nl,
    imp_graf_cir(Siguiente, Fin).

	
% imp_graf_cir("A","E").