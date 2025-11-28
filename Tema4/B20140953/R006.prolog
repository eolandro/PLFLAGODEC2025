/*
##R006##
##40##

Defina un predicado capaz de validar una direccion ipV6
sin comprimir

ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334").
true.
ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab").
true.
ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001").
true.
*/

digito("0").
digito("1").
digito("2").
digito("3").
digito("4").
digito("5").
digito("6").
digito("7").
digito("8").
digito("9").

dighex(D) :- digito(D).
dighex("A").
dighex("B").
dighex("C").
dighex("D").
dighex("E").
dighex("F").
dighex("a").
dighex("b").
dighex("c").
dighex("d").
dighex("e").
dighex("f").

ipv6(S) :-
    split_string(S, ":", "", Parts),
    Parts = [_,_,_,_,_,_,_,_],
    check_parts(Parts).

check_parts([]).
check_parts([X|Xs]) :-
    check_seg(X),
    check_parts(Xs).

check_seg(S) :-
    string_length(S, L),
    L >= 1,
    L =< 4,
    string_chars(S, Cs),
    maplist(is_hex, Cs).

is_hex(C) :-
    string_chars(One, [C]),
    dighex(One).
