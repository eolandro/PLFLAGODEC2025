combina_listas([],[],[]).
combina_listas([A|A1],[],[A|A1]).
combina_listas([],[B|B1], [B|B1]).

combina_listas([A|A1], [B|B1], [A, B | Resto]) :-
    combina_listas(A1, B1, Resto).

/*
?- combina_listas([1,2,3],["a"],R).
R = [1, "a", 2, 3] 

?- combina_listas([1,2,3],["a","b","c"],R).
R = [1, "a", 2, "b", 3, "c"] 

?- combina_listas([1],["a","b","c"],R).
R = [1, "a", "b", "c"].

*/