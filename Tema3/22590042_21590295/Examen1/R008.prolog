mandelBrot(0, 1).

mandelBrot(N, R) :-
    N > 0,
    NN is N - 1,
    mandelBrot(NN, RR),
    R is RR * RR + 1.