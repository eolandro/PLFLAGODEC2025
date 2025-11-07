direccion("A",  0,  1).
direccion("V",  0, -1).
direccion(">",  1,  0).
direccion("<", -1,  0).

pirata([], PX, PY, PX, PY).

pirata([F|C], PX, PY, RX, RY) :- 
    direccion(F,DX,DY), NX is PX + DX, NY is PY + DY, pirata(C, NX, NY, RX, RY).