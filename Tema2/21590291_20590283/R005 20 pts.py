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
#[255, 255, 170, 241]

T = patch(1,0xFF,L)

print(T)
#[255, 255, 170, 241]
"""

def patch(nbyte, valor, lbin, index=0):
    match index == len(lbin): #si el index es igual al largo del la lista, sino termina
        case True:
            return []
        case False:
            match index == nbyte: #evalúa si la posición actual es la que debe reemplazarse
                case True:
                    return [valor] + patch(nbyte, valor, lbin, index + 1) #Se construye la lista recursivamente.
                case False:
                    return [lbin[index]] + patch(nbyte, valor, lbin, index + 1)

L = [0xff, 0x01, 0xaa, 0xf1]
print("Antes del remplazo -->",L) 
print("Despues del remplazo -->",patch(1, 0xFF, L))  # Se espera... [255, 255, 170, 241]

