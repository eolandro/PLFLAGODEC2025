/*

##R006##
##45##

Recorrido en un grafo circular
Defina una funcion recursiva que imprima todos
los elementos de un grafo circular

A → B → C → D → E
↑               ↓
J → I → H → G → F

imp_graf_cir(Inicio,Limite).
*/



% Definición del grafo circular
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

% Caso base: cuando se alcanza el destino
imp_graf_cir(Inicio, Fin) :-
    Inicio == Fin,
    writeln(Inicio).

% Caso recursivo: avanzar al siguiente nodo
imp_graf_cir(Inicio, Fin) :-
    writeln(Inicio),
    grafo(Inicio, Prox),
    imp_graf_cir(Prox, Fin).