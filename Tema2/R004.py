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

def badaboom(n):
    if not n :
        return 
    if n > 100:
        return []
    
    if n % 3 == 0 and n % 5 == 0:
        return ["Bada Boom!!"] + badaboom(n + 1)
    elif n % 3 == 0:
        return ["Bada"] + badaboom(n + 1)
    elif n % 5 == 0:
        return ["Boom!!"] + badaboom(n + 1)
    else:
        return [n] + badaboom(n + 1)



L = badaboom(1)
print(L)