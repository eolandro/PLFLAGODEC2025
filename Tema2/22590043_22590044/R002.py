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
def seq0(n):
    if n == 0:
        return 7
    return 2 * seq0(n - 1) + 3

print('\nEjercico 2:\nseq0(n): 2 x seq0(n-1) + 3')
print(seq0(0))  # 7
print(seq0(1))  # 17
print(seq0(2))  # 37 
print(seq0(3))  # 77
print(seq0(4))  # 157 