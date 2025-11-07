/*
##R008##
##10##

Mandelbrot

Es una funcion de matematica de fractales asi

f(n+1) = f(n)**2  + 1, f(0) = 1

Demostracion
f(0) = 1
f(1) = f(0)**2  + 1 = 2
f(2) = f(1)**2  + 1 = 5
f(3) = f(2)**2  + 1 = 26

define el predicado en prolog
*/

mandelBrot(0, 1).


mandelBrot(N, Resultado) :-
    N > 0,
    PrevIndex is N - 1,
    mandelBrot(PrevIndex, ValorPrevio),
    Resultado is ValorPrevio * ValorPrevio + 1.



