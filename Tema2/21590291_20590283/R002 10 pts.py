##R002##
##10##
"""
Dada la siguiente secuencia matematica
7, 17, 37, 77, 157, 317
Encuentre la función matematica recursiva
e implementela en python

def seq0():
	pass
	
seq0(0)
#7
seq0(1)
#17
seq0(2)
#37

"""

def seq0(numx):
    if numx == 0:
        return 7 #Cuando el numero es 0 devuelve 7
    return 2 * seq0(numx - 1) + 3 #si no devuelve el valor anterior en la secuencia mul por 3 mas 7

print(seq0(0))  # debetia mostrar 7
print(seq0(1))  # debetia mostrar 17
print(seq0(2))  # debetia mostrar 37
