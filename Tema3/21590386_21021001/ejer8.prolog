##R008##
##10##
"""

Mandelbrot

Es una funcion de matematica de fractales asi

f(n+1) = f(n)**2  + 1, f(0) = 1

Demostracion
f(0) = 1
f(1) = f(0)**2  + 1 = 2
f(2) = f(1)**2  + 1 = 5
f(3) = f(2)**2  + 1 = 26

define el predicado en prolog

mandelBrot(N,R).

mandelBrot(0,R).
R = 1.
mandelBrot(1,R).
R = 2.
mandelBrot(2,R).
R = 5.
mandelBrot(3,R).
R = 26.
"""

/* ----------- Ejercicio 8 ----------- */

mandelBrot(0, 1).

mandelBrot(N, R) :- N > 0, N1 is N - 1, mandelBrot(N1, R1), R is R1 * R1 + 1.
