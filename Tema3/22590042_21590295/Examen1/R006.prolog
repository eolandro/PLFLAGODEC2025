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

imp_graf_cir(Inicio, Limite) :-
    write(Inicio), nl,
    (Inicio == Limite -> true ;
     grafo(Inicio, Siguiente),
     imp_graf_cir(Siguiente, Limite)).
