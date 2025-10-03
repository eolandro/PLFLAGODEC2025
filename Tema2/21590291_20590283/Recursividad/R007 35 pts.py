##R007##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion recursiva obten la
salida correspondiente:

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# resultado esperado [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""



def composicion_recursiva(valor, lista_funciones):
    if not lista_funciones:
        return valor
    resultado = lista_funciones[0](valor)
    return composicion_recursiva(resultado, lista_funciones[1:])

def fun2(lista):
    match lista:
        case [p, s, *r]:
            NuevoNombre = s.replace("GUERRA", "ROMAY").replace("LINA", "RENE")
            return [p, NuevoNombre] + r
        case _:
            return lista  # Caso para listas cortas o vacías sin cambios

def fun3(lista):
    match lista:
        case [primero, segundo, *resto]:
            promedio = (sum(map(float, resto)) / len(resto)) * 100 if resto else 0
            return [primero, segundo, promedio]
        case []:
            return lista  # Caso para listas cortas o vacías sin cambios

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"


# ******************* En caso de que el nombre se tenga que modificar *******************
# Lista de funciones a aplicar en orden
funciones = [
    lambda s: s.split(','), #Funcion anonima para separar en diferentes elementos por cada ","
    lambda lista: [int(lista[0])] + lista[1:], #Funcion anonima para convertir a entero (int)
    fun2, # remplazar las palabras "Guerra" por "ROMAY" y "LINA" por "RENE"
    fun3 #Sacar promedio del resto de elemetntos 
    ]
print("-- En caso de que el nombre se tenga que modificar \n")
print("Antes de la composicion recursiva: -->",R)
print("Despues de la composicion recursiva: -->",composicion_recursiva(R, funciones),"\n")

# ******************* En caso de que el nombre NO se tenga que modificar *******************
# Lista de funciones a aplicar en orden
funciones = [
    lambda s: s.split(','), #Funcion anonima para separar en diferentes elementos por cada ","
    lambda lista: [int(lista[0])] + lista[1:], #Funcion anonima para convertir a entero (int) 
    fun3 #Sacar promedio del resto de elemetntos 
    ]
print("-- En caso de que el nombre NO se tenga que modificar\n")
print("Antes de la composicion recursiva -->",R)
print("Despues de la composicion recursiva -->",composicion_recursiva(R, funciones),"\n")