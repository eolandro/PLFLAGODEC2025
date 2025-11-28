% ##R008##
mac_ad(S) :-
    string(S),
    string_codes(S, C),
    split(C, 0':, Grupos),
    length(Grupos, 6),
    forall(member(G, Grupos), es_par_hex(G)).

es_par_hex([A,B]) :-
    code_type(A, xdigit),
    code_type(B, xdigit).


split([], _, [[]]).
split([C|R], Sep, [[]|Rest]) :- C =:= Sep, !, split(R, Sep, Rest).
split([C|R], Sep, [[C|G1]|Rest]) :- split(R, Sep, [G1|Rest])..