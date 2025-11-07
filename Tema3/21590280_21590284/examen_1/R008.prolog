mandelBrot(0, 1).

mandelBrot(N, R) :-
    N > 0,
    N1 is N - 1,
    mandelBrot(N1, R1),
    R is R1 * R1 + 1.

/*
?- mandelBrot(0,R).
R = 1 .

?- mandelBrot(1,R).
R = 2 .

?- mandelBrot(2,R).
R = 5 .

?- mandelBrot(3,R).
R = 26 .
*/