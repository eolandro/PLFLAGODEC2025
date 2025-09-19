#-----------------------------------R001-----------------------------------#
#------------------------------------10------------------------------------#


#Primer elemento = P
#Resto de fila = R


'''
Defina una función recursiva que permita imprimir una matriz, una matriz en realidad es una lista 
de listas una función recursiva que permita imprimir una matriz, una matriz en realidad es una listade listas
'''

#Convierte los elementos de una lista en una cadena separada por comas
def elementos_a_cadena(lista):
    if not lista:  # caso base: lista vacía
        return ''
    P, *R = lista  # P = primer elemento, R = resto de la lista
    if not R:  # si no hay más elementos
        return str(P)
    return str(P) + ',' + elementos_a_cadena(R) # recursión con R


#Convierte una fila de la matriz en su representación con corchetes.
def fila_a_cadena(fila):
    return '[' + elementos_a_cadena(fila) + ']'

#Imprime la matriz fila por fila en formato recursivo.
def imprimir_matriz(matriz):
    if not matriz:  # caso base: matriz vacía
        return
    P, *R = matriz  # P = primera fila, R = resto de la matriz
    print(fila_a_cadena(P)+ '\n')  # imprime la primera fila
    imprimir_matriz(R)  # recursión con el resto de la matriz


# Ejemplo de uso
M = [
    [9, 8, 7],
    [4, 5, 6],
    [3, 2, 1]
]

imprimir_matriz(M)