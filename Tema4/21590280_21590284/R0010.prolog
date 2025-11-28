% ##R010##
bcrypt(S) :-
    string(S),
    string_codes(S, C),
    split(C, 0'$, Grupos),
    Grupos = [[], Ver, Cost, Hash],
    verificar_version(Ver),
    length(Cost, 2), forall(member(D, Cost), code_type(D, digit)),
    forall(member(H, Hash), es_b64(H)).

verificar_version([0'2, V]) :- member(V, [0'a, 0'b, 0'y]).

es_b64(C) :- code_type(C, alnum).
es_b64(0'.).
es_b64(0'/).


split([], _, [[]]).
split([C|R], Sep, [[]|Rest]) :- C =:= Sep, !, split(R, Sep, Rest).
split([C|R], Sep, [[C|G1]|Rest]) :- split(R, Sep, [G1|Rest]).