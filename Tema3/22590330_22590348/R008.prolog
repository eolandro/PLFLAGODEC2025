/*R008*/
mandelBrot(0,R) :- R is 1.
mandelBrot(1,R) :- R is 2.
mandelBrot(N,R) :- NN is N-1, mandelBrot(NN,RR), R is RR*RR + 1.