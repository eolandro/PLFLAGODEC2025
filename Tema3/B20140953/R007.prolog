/*
##R007##
##15##
 Bada Boom!!! 
imprime los numeros de 1 a N
con las siguientes condiciones:
	1) si es multiplo de 3 coloque la cadena "Bada"
	2) si es multiplo de 5 coloque la cadena "Boom!!"
	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
	
badaboom(N)
*/

badaboom(N) :-
    mostrar(1, N).

% Caso de término
mostrar(I, Limite) :-
    I > Limite, !.

% Múltiplo de 3 y 5
mostrar(I, Limite) :-
    0 is I mod 3,
    0 is I mod 5,
    writeln("Bada Boom!!"),
    Siguiente is I + 1,
    mostrar(Siguiente, Limite).

% Múltiplo solo de 3
mostrar(I, Limite) :-
    0 is I mod 3,
    writeln("Bada"),
    Siguiente is I + 1,
    mostrar(Siguiente, Limite).

% Múltiplo solo de 5
mostrar(I, Limite) :-
    0 is I mod 5,
    writeln("Boom!!"),
    Siguiente is I + 1,
    mostrar(Siguiente, Limite).

% Caso general: imprimir el número
mostrar(I, Limite) :-
    writeln(I),
    Siguiente is I + 1,
    mostrar(Siguiente, Limite).