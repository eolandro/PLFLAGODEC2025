#-----------------------------------R004-----------------------------------#
#------------------------------------15------------------------------------#


'''
Bada Boom!!! 
Genere e imprima una lista con los numeros del  1 al 100 con las siguientes condiciones:
	1) si es multiplo de 3 coloque la cadena "Bada"
	2) si es multiplo de 5 coloque la cadena "Boom!!"
	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
'''

def transformar(n):
        if n % 3 == 0 and n % 5 == 0: # si es múltiplo de 3 y 5
            return "BadaBoom!!"
        if n % 3 == 0: # si solo es múltiplo de 3
            return "Bada"
        if n % 5 == 0: # si solo es múltiplo de 5
            return "Boom!!"
        return n # si no cumple ninguna regla, devuelve el número



def badaboom(n=100):
    if n == 1: # caso base: la lista empieza con el primer elemento
        return [transformar(1)]
    
    # caso recursivo:
    # se genera la lista de 1 hasta n-1 y luego se agrega el elemento n transformado
    return badaboom(n-1) + [transformar(n)]


L = badaboom()
print(L)