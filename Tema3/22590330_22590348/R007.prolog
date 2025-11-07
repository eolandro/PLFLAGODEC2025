/*
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
*/
imprimir_numero(X) :- 0 =:= X mod 3, 0 =:= X mod 5, write("Bada Boom!!"), nl.
imprimir_numero(X) :- 0 =:= X mod 3, write("Bada"), nl.
imprimir_numero(X) :- 0 =:= X mod 5, write("Boom!!"), nl.
imprimir_numero(X) :- write(X), nl.
badaboom(0) :- !.
badaboom(N) :- N > 0, NN is N - 1, badaboom(NN), imprimir_numero(N).