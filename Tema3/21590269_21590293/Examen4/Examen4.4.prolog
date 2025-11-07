pirata([], PX, PY, PX, PY).

pirata(["A"|Resto], PX, PY, RX, RY) :-
    NuevoPY is PY + 1,
    pirata(Resto, PX, NuevoPY, RX, RY).

pirata(["V"|Resto], PX, PY, RX, RY) :-
    NuevoPY is PY - 1,
    pirata(Resto, PX, NuevoPY, RX, RY).

pirata([">"|Resto], PX, PY, RX, RY) :-
    NuevoPX is PX + 1,
    pirata(Resto, NuevoPX, PY, RX, RY).

pirata(["<"|Resto], PX, PY, RX, RY) :-
    NuevoPX is PX - 1,
    pirata(Resto, NuevoPX, PY, RX, RY).