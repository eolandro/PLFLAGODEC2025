badaboom(N) :-
    badaboom(1, N).

badaboom(I, N) :-
    I > N, !.


badaboom(I, N) :-
    M3 is I mod 3,
    M5 is I mod 5,
    M3 = 0, M5 = 0,
    write('"BadaBoom!!"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    M3 is I mod 3,
    M3 = 0,
    write('"Bada"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    M5 is I mod 5,
    M5 = 0,
    write('"Boom!!"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    write(I), nl,
    S is I + 1,
    badaboom(S, N).

% --- badaboom(15).