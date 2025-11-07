
seq0(0, 7).
seq0(N, R) :- 
    N > 0, 
    N1 is N - 1, 
    seq0(N1, R1), 
    P is 2 ** N1, 
    R is R1 + 10 * P.