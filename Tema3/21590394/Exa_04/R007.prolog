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
##R008##
##10##
"""


badaboom(N) :- badaboom(1, N).

badaboom(I, N) :-
    I =< N,
    (   I mod 3 =:= 0, I mod 5 =:= 0 -> write('BadaBoom!!')
    ;   I mod 3 =:= 0 -> write('Bada')
    ;   I mod 5 =:= 0 -> write('Boom!!')
    ;   write(I)
    ),
    nl,
    NextI is I + 1,
    badaboom(NextI, N).

badaboom(I, N) :- I > N.
