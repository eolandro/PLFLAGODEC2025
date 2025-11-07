mover("A", PX, PY, PX, NY) :-
    NY is PY + 1.

mover("V", PX, PY, PX, NY) :-
    NY is PY - 1.

mover(">", PX, PY, NX, PY) :-
    NX is PX + 1.

mover("<", PX, PY, NX, PY) :-
    NX is PX - 1.

pirata([], PX, PY, PX, PY).

pirata([F|C], PX, PY, RX, RY) :-
    mover(F, PX, PY, NX, NY),
    pirata(C, NX, NY, RX, RY).

