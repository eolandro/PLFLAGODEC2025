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
def badaboom(L):
    match L:
        case [100]:
            return []
        case [P,*R]:
            N = P + 1
            if N % 3 == 0 and N % 5 == 0:
                return ["Bada Boom!!"] + badaboom([N] + R)
            elif N % 3 == 0:
                return ["Bada"] + badaboom([N] + R)
            elif N % 5 == 0:
                return ["Boom!!"] + badaboom([N] + R)
            else:
                return [N] + badaboom([N] + R)
    return []

L = badaboom([0])
print(L)