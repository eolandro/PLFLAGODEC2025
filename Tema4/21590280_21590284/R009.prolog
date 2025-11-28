% ##R009##
uuid(S) :-
    string(S),
    string_codes(S, C),
    split(C, 0'-, Grupos),
    length(Grupos, 5),
    maplist(length, Grupos, [8, 4, 4, 4, 12]),
    forall(member(G, Grupos), forall(member(X, G), code_type(X, xdigit))).
split([], _, [[]]).
split([C|R], Sep, [[]|Rest]) :- C =:= Sep, !, split(R, Sep, Rest).
split([C|R], Sep, [[C|G1]|Rest]) :- split(R, Sep, [G1|Rest]).