##R007##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion recursiva obten la
salida correspondiente:

R = "29590095,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""

def compRecursiva(valor, LF):
    if valor is None:
        return None
    match LF:
        case [F]:
            return F(valor)
        case [F, *R]:
            return compRecursiva(F(valor), R)
    return None

def listaStrFloat(L):
    match L:
        case [A]:
            return [float(A)]
        case [P, *R]:
            return [float(P)] + listaStrFloat(R)
    return []

def concatVal(L):
    match L:
        case [A, B, *R]:
            return [int(A), B] + listaStrFloat(R)

def promList(L):
    match L:
        case [A, B, *R]:
            return [A, B, (sum(R) / len(R)) * 100]

ListaFuncion = [
    lambda s: s.split(","),
    lambda l: concatVal(l),
    lambda l: promList(l)
]

R = "29590095,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = compRecursiva(R, ListaFuncion)

print(T)