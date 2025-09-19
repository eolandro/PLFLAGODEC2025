#-----------------------------------R005-----------------------------------#
#------------------------------------20------------------------------------#

'''
Un ingeniero esta estudiando un parche creado por un cracker al usar herramientas 
como x64dbg se da cuenta que el parche reemplaza el byte 343 un '0x01' por un 
'0x00' del binario original

Suponiendo que el binario llega en una lista, defina una funcion que reemplace una 
posicion especifica de la lista por otro valor
'''

def patch(nbyte, valor, lbin):

    '''
    Reemplaza el elemento en la posición nbyte de la lista lbin por valor,
    usando recursión.

    Parámetros:
        nbyte (int): posición a reemplazar (empezando en 0)
        valor (int): nuevo valor a poner en la lista
        lbin (list): lista original de bytes

    Retorna:
        list: nueva lista con el byte reemplazado
    '''

    if not lbin:  # caso base: lista vacía
        return []
    P, *R = lbin

    if nbyte == 0:  # si es la posición a reemplazar
        # reemplazamos el primer elemento
        return [valor] + R
    else:
        # mantenemos el primer elemento igual y aplicamos recursión
        return [P] + patch(nbyte - 1, valor, R)
    
# Ejemplo de uso

L = [0xff, 0x01, 0xaa, 0xf1]  # lista original
T = patch(1, 0xFF, L)          # reemplazamos el índice 1 por 0xFF

print(T)  # salida: [255, 255, 170, 241]


    