% ##R007##
php_var(S) :-
    string(S),
    string_codes(S, [0'$, C | R]),
    (code_type(C, alpha) ; C == 0'_),
    forall(member(X, R), (code_type(X, alnum) ; X == 0'_)).