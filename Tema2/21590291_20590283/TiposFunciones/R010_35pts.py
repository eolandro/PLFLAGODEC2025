##R010##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion por funciones de orden
superior obten la salida correspondiente:

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_HOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
T = T(fun3) #...
R = T(lambda e: None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""
# Composición funcional basada en funciones de orden superior (HOF)
def composicion_HOF(valor):
    def aplicar_funcion(func):
        if func is None or (callable(func) and getattr(func, '__name__', '') == '<lambda>'): # Cuando recibida lambda e: None finalizara la funcion y se retorna el valor actual
            return valor # Aplica la función sobre el valor actual
        valornuevo = func(valor)
        return composicion_HOF(valornuevo)
    return aplicar_funcion

def fun0(cedena):#Para separar en diferentes elementos por cada ","
    return cedena.split(',') 

def fun1(lista): #Funcion para separar el nombre de la cadena
    match lista:
        case [p, *r]:
            return [int(p)] + r
        case _:
            return lista

def fun2(lista): #Funcion para calcular el promedio
    match lista:
        case [primero, segundo, *resto]:
            promedio = (sum(map(float, resto)) / len(resto)) * 100 if resto else 0
            return [primero, segundo, promedio]
        case []:
            return lista  # Caso para listas cortas o vacías sin cambios

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
print("Antes del diseño composicion por funciones de orden superior \n",R)

T = composicion_HOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
resultado = T(lambda e: None)  # Función final para terminar composición y obtener resultado
print("Despues del diseño composicion por funciones de orden superior \n",resultado)# Se espera[29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]
