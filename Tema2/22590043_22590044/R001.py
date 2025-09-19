##R001##
##10##
"""
Defina una función recursiva que permita imprimir
una matriz, una matriz en realidad es una lista
de listas

M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]

def impMat(matriz):
	pass
	
impMat(M)
#[9,8,7],
#[4,5,6],
#[3,2,1]

"""
def impMat(matriz):
    match matriz:
        case []:
            return []
        case [f,*r]:
            print(f)
            impMat(r)

M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]
print('Ejercico 1:')
impMat(M)