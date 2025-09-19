##R007##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion recursiva obten la
salida correspondiente:

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# [29590095,"GUERRA TACITURNO LINA FERNANDA",92.5]

"""

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"


def composicion_recursiva(valor, lista_funciones):
    if valor is None:
        return None
    match lista_funciones:
        case [f]:
            return f(valor)
        case [f, *r]:
            return composicion_recursiva(f(valor), r)
    return None

ListaFunciones = [
    lambda s: s.strip(),
    lambda s: s.split(','),  # separa por comas
    lambda l: [l[0], l[1], [float(x) for x in l[2:]]],  # id, nombre, lista de floats (sin función auxiliar)
    lambda l: [int(l[0]), l[1], round(sum(l[2]) / len(l[2]) * 100, 1)]  # id, nombre, promedio en porcentaje
]

print('\nEjercico 7:')
R = composicion_recursiva(R, ListaFunciones)
print(R)  # Esperado: [29590095, "GUERRA TACITURNO LINA FERNANDA", 92.5]