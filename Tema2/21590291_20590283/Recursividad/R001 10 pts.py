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

M = [
    [9, 8, 7],
    [4, 5, 6],
    [3, 2, 1]
]



def impMatconmatch(mat):
    match mat:
        case []: #En caso que la matriz este vacia
            return
        case [P, *R]: #En caso de que no separar la primer lista de listas
            print(P) # Imprimir la primer lista de listas
            impMatconmatch(R) #Recursividad con el resto de las listas de matriz
            
impMatconmatch(M)