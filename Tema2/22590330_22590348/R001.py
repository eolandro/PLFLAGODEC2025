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
    
def impMat(M):
    match M:
        case []:
            return
        case [P, *R]:
            print(P)
            impMat(R)

M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]

impMat(M)