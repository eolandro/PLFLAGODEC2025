% ##R002##
escape(S) :-
    string(S),
    string_codes(S, C),
    es_escape(C).

es_escape([C]) :-
    member(C, [34, 92, 47, 98, 102, 110, 114, 116]).

es_escape([117, H1, H2, H3, H4]) :-
    es_hex(H1), es_hex(H2), es_hex(H3), es_hex(H4).

es_hex(C) :- code_type(C, xdigit).