##R004##
##15##
"""
 Bada Boom!!! 
Genere e imprima una lista con los numeros del  1 al 100 
con las siguientes condiciones:
	1) si es multiplo de 3 coloque la cadena "Bada"
	2) si es multiplo de 5 coloque la cadena "Boom!!"
	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
	
def badaboom():
	pass
	
L = badaboom()
print(L)
#[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...
"""
def badaboom(n=1):
    match (n > 100, n % 3 == 0, n % 5 == 0):
        case (True, _, _):
            return []
        case (_, True, True):
            return ["Bada Boom!!"] + badaboom(n+1)
        case (_, True, False):
            return ["Bada"] + badaboom(n+1)
        case (_, False, True):
            return ["Boom!!"] + badaboom(n+1)
        case _:
            return [n] + badaboom(n+1)

L = badaboom()
print('\nEjercico 4:')
print(L)