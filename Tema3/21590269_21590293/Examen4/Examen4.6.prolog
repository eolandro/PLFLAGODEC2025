% Definición del grafo
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

% Caso base: cuando el nodo actual es el límite
imp_graf_cir(Limite, Limite) :-
    writeln(Limite).

% Caso recursivo: imprimir el nodo actual y continuar
imp_graf_cir(Inicio, Limite) :-
    Inicio \= Limite,
    writeln(Inicio),
    grafo(Inicio, Siguiente),
    imp_graf_cir(Siguiente, Limite).