seq0(0, 7).

seq0(N, R) :-
    N > 0,
    NN is N - 1,
    seq0(NN, RR),
    R is 2 * RR + 3.