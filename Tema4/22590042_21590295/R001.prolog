lista_int(['0']).
lista_int([D|R]) :- n1(D), digitos(R).
lista_int(['-'|R]) :- lista_int_neg(R).      
lista_int_neg([D|R]) :- n1(D), digitos(R).
lista_int_neg(['-'|_]) :- false.  
digitos([]).
digitos([D|R]) :- n0_9(D), digitos(R).

n1('1'). 
n1('2'). 
n1('3'). 
n1('4'). 
n1('5').
n1('6'). 
n1('7'). 
n1('8'). 
n1('9').

n0_9('0'). 
n0_9('1'). 
n0_9('2'). 
n0_9('3'). 
n0_9('4').
n0_9('5'). 
n0_9('6'). 
n0_9('7'). 
n0_9('8'). 
n0_9('9').

integer_s(Cadena) :- string_chars(Cadena, Lista), lista_int(Lista).
