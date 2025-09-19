###R001##
##10##

# Defina una función recursiva que permita imprimir
# una matriz, una matriz en realidad es una lista
# de listas


def impMat(matriz: list):
    match matriz:
        case []:
            return
        case [P, *R]:
            print(P)
            impMat(R)


M = [[9, 8, 7], [4, 5, 6], [3, 2, 1]]

impMat(M)

##R002##
##10##

# Dada la siguiente secuencia matematica
# 7, 17, 37, 77, 157, 317
# Encuentre la función matematica recursiva
# e implementela en python


def seq0(num):
    if num == 0:
        return 7
    elif num > 0:
        potencia = 10 * (2 ** (num - 1))
        return seq0(num - 1) + potencia
    else:
        return "Intente de nuevo"


print(seq0(5))


##R003##
##45##

# Recorrido en un grafo circular
# Defina una funcion recursiva que imprima todos
# los elementos de un grafo circular

# region Con Efectos secundarios


def impGrafCir(grafo, inicio, limite):

    match grafo:
        case []:
            return "Intenta de nuevo"
        case [[ori, dest], *resto]:
            if ori == inicio:
                print(inicio)
                if inicio == limite:
                    return
                impGrafCir(grafo, dest, limite)
            else:
                impGrafCir(resto, inicio, limite)


Grafo = [
    ["AZ", "BX"],
    ["BX", "CY"],
    ["CY", "DW"],
    ["DW", "EV"],
    ["EV", "FU"],
    ["FU", "GR"],
    ["GR", "HS"],
    ["HS", "IT"],
    ["IT", "JU"],
    ["JU", "AZ"],
]

impGrafCir(Grafo, "AZ", "EV")

# endregion


# region sin efectos secundarios
def impGrafCir(grafo, inicio=None, limite=None):

    if inicio is None or limite is None:
        return [False, "Error: Debes indicar inicio y límite."]

    if not grafo:
        return [False, "Error: El grafo está vacío."]

    if limite not in sum(grafo, []):
        return [False, f"Error: El nodo límite '{limite}' no existe en el grafo."]

    match grafo:
        case []:
            return [False, "Intenta de nuevo"]

        case [[ori, dest], *resto]:
            if ori == inicio:
                print(inicio)
                if inicio == limite:
                    return [True, limite]
                return impGrafCir(grafo, dest, limite)
            else:
                return impGrafCir(resto, inicio, limite)


# endregion


##R004##
##15##

# Bada Boom!!!
# Genere e imprima una lista con los numeros del 1 al 100
# con las siguientes condiciones:
# 1) si es multiplo de 3 coloque la cadena "Bada"
# 2) si es multiplo de 5 coloque la cadena "Boom!!"
# 3) si es multiplo de 3 y 5 coloque "Bada Boom!!"


def badaBoom(lista: list = [1]):
    match lista:
        case [P]:
            if P == 100:
                return [P]
            elif P > 100 or P < 0:
                return []
            Q = P
            if P % 3 == 0 and P % 5 == 0:
                P = "Bada Boom!!"
            elif P % 3 == 0:
                P = "Bada"
            elif P % 5 == 0:
                P = "Boom!!"
            return [P] + badaBoom([Q + 1])


L = badaBoom()

print(L)


##R006##
##20##

# Una funcion toma dos listas L1 y L2, las une en una sola
# combiando primer elemento de L1 con el primer elemento de L2.

# Si una de las dos listas se agota simplemente une el resto de la lista a
# la lista resultante


def combinaListas(Lista1, Lista2):
    match (Lista1, Lista2):
        case ([], []):
            return []
        case ([], resto2):
            return resto2
        case (resto1, []):
            return resto1
        case ([contenidoL1, *sobranteL1], [contenidoL2, *sobranteL2]):
            return [contenidoL1, contenidoL2] + combinaListas(sobranteL1, sobranteL2)


##R007##
##35##

# Procesar data

# Utilizando el patron de diseño composicion recursiva obten la
# salida correspondiente:
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]


def sumPro(numeros):
    if not numeros:
        return 0.0, 0
    suma, cuenta = sumPro(numeros[1:])
    return float(numeros[0]) + suma, 1 + cuenta


def compRec(lista):
    if lista is None or len(lista) < 3:
        return None

    nocontrol, nombre, *numeros = lista
    suma, prototal = sumPro(numeros)
    promedio = (suma / prototal if prototal > 0 else 0) * 100

    return [nocontrol, nombre, promedio]


R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7".split(",")


print(compRec(R))
