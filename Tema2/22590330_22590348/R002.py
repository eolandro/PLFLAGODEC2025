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
seq0(1) +10
#17
seq0(2) +20
#37
seq0(3) +40
#77

"""

def seq0(n):
    if n == 0:
        return 7
    return seq0(n-1)+ (10 * 2**(n-1))

print(seq0(0))
print(seq0(1))
print(seq0(2))
print(seq0(3))
print(seq0(4))
print(seq0(5))


