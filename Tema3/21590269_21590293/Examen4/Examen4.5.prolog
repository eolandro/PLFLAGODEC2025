seq0(0, '7').
seq0(Numerito, Result) :-
    Numerito > 0,
    N1 is Numerito - 1,
    seq0(N1, _),
    F is (2 ** Numerito) - 1,
    atom_number(AF, F),
    atom_concat(AF, '7', Result).