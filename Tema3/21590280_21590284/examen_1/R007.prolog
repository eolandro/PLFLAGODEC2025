badaboom(N) :-
    badaboom(1, N).

badaboom(N, N) :-
    M3 is N mod 3,
    M5 is N mod 5,
    M3 = 0, M5 = 0,
    write('"BadaBoom!!"'), nl.

badaboom(N, N) :-
    M3 is N mod 3,
    M5 is N mod 5,
    M3 = 0, M5 \= 0,
    write('"Bada"'), nl.

badaboom(N, N) :-
    M3 is N mod 3,
    M5 is N mod 5,
    M3 \= 0, M5 = 0,
    write('"Boom!!"'), nl.

badaboom(N, N) :-
    write(N), nl.

badaboom(I, N) :-
    M3 is I mod 3,
    M5 is I mod 5,
    M3 = 0, M5 = 0,
    write('"BadaBoom!!"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    M3 is I mod 3,
    M5 is I mod 5,
    M3 = 0, M5 \= 0,
    write('"Bada"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    M3 is I mod 3,
    M5 is I mod 5,
    M3 \= 0, M5 = 0,
    write('"Boom!!"'), nl,
    S is I + 1,
    badaboom(S, N).

badaboom(I, N) :-
    write(I), nl,
    S is I + 1,
    badaboom(S, N).
