badaboom(0).

badaboom(N) :-
    N > 0,
    N1 is N - 1,
    badaboom(N1),
    imprime(N).

imprime(N) :-
    multiplo3(N),
    multiplo5(N),
    write('BadaBoom!!'), nl.

imprime(N) :-
    multiplo3(N),
    no_multiplo5(N),
    write('Bada'), nl.

imprime(N) :-
    multiplo5(N),
    no_multiplo3(N),
    write('Boom!!'), nl.

imprime(N) :-
    no_multiplo3(N),
    no_multiplo5(N),
    write(N), nl.

multiplo3(3).
multiplo3(N) :- N > 3, N1 is N - 3, multiplo3(N1).

multiplo5(5).
multiplo5(N) :- N > 5, N1 is N - 5, multiplo5(N1).

no_multiplo3(N) :- N < 3.
no_multiplo3(N) :- N > 3, N1 is N - 3, no_multiplo3(N1).

no_multiplo5(N) :- N < 5.
no_multiplo5(N) :- N > 5, N1 is N - 5, no_multiplo5(N1).
