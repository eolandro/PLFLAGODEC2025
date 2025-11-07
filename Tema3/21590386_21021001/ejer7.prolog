##R007##
##15##
"""
 Bada Boom!!!
imprime los numeros de 1 a N
con las siguientes condiciones:
  1) si es multiplo de 3 coloque la cadena "Bada"
  2) si es multiplo de 5 coloque la cadena "Boom!!"
  3) si es multiplo de 3 y 5 coloque "Bada Boom!!"

badaboom(N)

badaboom(15).
#1
#2
#"Bada"
#4
#"Boom!!"
#"Bada"
#7
#8
#"Bada"
#"Boom!!"
#11
#"Bada"
#13
#14
#"BadaBoom!!"
"""
/* ----------- Ejercicio 7 ----------- */


badaboom(0) :- !, true.

badaboom(N) :- N > 0, N1 is N - 1, badaboom(N1), mostrar(N).


mostrar(N) :- 0 is N mod 3, 0 is N mod 5, write('"BadaBoom!!"'), nl, !.


mostrar(N) :- 0 is N mod 3, write('"Bada"'), nl, !.

mostrar(N) :- 0 is N mod 5, write('"Boom!!"'), nl, !.

mostrar(N) :- write("#"), write(N), nl.
