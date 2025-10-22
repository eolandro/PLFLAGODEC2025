##R009##
##10##
"""
Procesar data

Utilizando el patron de diseño composicion con generadores
obten la salida correspondiente:

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = compoGen(R)
next(T)
R = T.next(fun0)
R = T.next(fun1)
R = T.next(fun2)
R = T.next(fun3) #...
R = T.next(None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""


def fun0(cadena):
    return cadena.split(',')

def fun1(lista):
    match lista:
        case [p, *r]:
            return [int(p)] + r
        case _:
            return lista
def fun2(lista):
    match lista:
        case [primero, segundo, *resto]:
            promedio = (sum(map(float, resto)) / len(resto)) * 100 if resto else 0
            return [primero, segundo, promedio]
        case []:
            return lista

# Generador de composición corregido
def compoGen(valor):
    terminado = False
    resultado = valor
    funcion = yield True  # Señal inicial
    while not terminado:
        if funcion is None:
            terminado = True
            break
        resultado = funcion(resultado)  # Aplica la función recibida
        funcion = yield resultado       # Devuelve el resultado y espera la siguiente función
    yield resultado  # Devuelve valor final

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
print("\nAntes del patron de diseño composicion con generadores\n",R)
T = compoGen(R)

next(T)          # Inicia el generador → True
T.send(fun0)     # Aplica fun0
T.send(fun1)     # Aplica fun1
T.send(fun2)     # Aplica fun2
R2=T.send(None)     # Termina

print("\nDespues del patron de diseño composicion con generadores\n",R2)
