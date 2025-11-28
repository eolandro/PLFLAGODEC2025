% ##R006##
ipv6(S) :-
    string(S),
    string_codes(S, C),
    split(C, 0':, Grupos), % 0': es el codigo ASCII de :
    length(Grupos, 8),
    maplist(grupo_ipv6, Grupos).

grupo_ipv6(G) :-
    G \= [],
    length(G, L),
    L >= 1, L =< 4,
    forall(member(X, G), code_type(X, xdigit)).


split([], _, [[]]).
split([C|R], Sep, [[]|Rest]) :- C =:= Sep, !, split(R, Sep, Rest).
split([C|R], Sep, [[C|G1]|Rest]) :- split(R, Sep, [G1|Rest]).