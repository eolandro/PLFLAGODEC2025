combina_listas([], [], []).
combina_listas([A|A1], [], [A|A1]).
combina_listas([], [B|B1], [B|B1]).
combina_listas([A|A1], [B|B1], [A, B | R]) :- combina_listas(A1, B1, R).