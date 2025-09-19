##R005##
##20##
"""
Un ingeniero esta estudiando un parche creado por un cracker
al usar herramientas como x64dbg se da cuenta que el parche reemplaza
el byte 343 un '0x01' por un '0x00' del binario original

Suponiendo que el binario llega en una lista, defina una funcion
que reemplace una posicion especifica de la lista por otro valor


def patch(nbyte,valor,lbin):
	pass
	
L = [0xff, 0x01, 0xaa, 0xf1 ]
#[255, 1, 170, 241]

T = patch(1,0xFF,L)

print(T)
#[255, 255, 170, 241]
"""

def patch(nbyte, valor, lbin):
    if nbyte == 0:
        return [valor] + lbin[1:]
    return [lbin[0]] + patch(nbyte - 1, valor, lbin[1:])

L = [0xff, 0x01, 0xaa, 0xf1]
T = patch(1, 0xFF, L)
print(T) 
