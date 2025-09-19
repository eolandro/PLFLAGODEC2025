##R007##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion recursiva obten la
salida correspondiente:

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""
def compRecursiva(Valor, LF):
    if Valor is None:
        return None
    match LF:
        case []:
            return Valor
        case [F]:
            return F(Valor)
        case [F, *R]:
            return compRecursiva(F(Valor), R)

def listaStrFloat(L):
    match L:
        case []:
            return []
        case [A]:
            return [float(A)]
        case [P, *R]:
            return [float(P)] + listaStrFloat(R)

R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"

ListaFuncion = [
    lambda s: s.split(","),                                              
    lambda l: [int(l[0]), l[1]] + listaStrFloat(l[2:]),                  
    lambda l: [l[0], l[1], round((sum(l[2:]) / len(l[2:])) * 100, 1)],  
    lambda l: [l[0], "ROMAY TACITURNO RENE FERNANDA", l[2]]              
]

T = compRecursiva(R, ListaFuncion)
print(T)
# [29590095, 'ROMAY TACITURNO RENE FERNANDA', 92.5]