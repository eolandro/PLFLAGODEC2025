/*
##R008##
##20##

Realice un predicado que valide una direccion mac
20 pts

mac_ad("08:9e:01:6f:2e:41").
true
mac_ad("ff:ff:01:6f:2e:41").
true
mac_ad("00:00:00:00:00:00").
true
*/

mac_ad(S) :-
    split_string(S, ":", "", P),
    length(P, 6),
    maplist(valid_pair, P).

valid_pair(Str) :-
    string_chars(Str, [A,B]),
    hex(A),
    hex(B).

hex(C) :-
    member(C,
        ['0','1','2','3','4','5','6','7','8','9',
         'a','b','c','d','e','f',
         'A','B','C','D','E','F']).
