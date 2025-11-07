/*R005*/
seq0(0,R):- R is 7.
seq0(N,R):- N > 0, NN is N - 1, seq0(NN, RR), R is RR * 2 + 3.