##EXAMEN SEGUNDA UNIDAD ##

#//////////////////////////////////////////////////////////////#

##R001##
##10##
def impMat(matriz):
    match matriz:
        case []:
            return
        case [fila, *resto]:
            print(fila)
            impMat(resto)
M = [
    [9,8,7],
    [4,5,6],
    [3,2,1]
]
impMat(M)

#//////////////////////////////////////////////////////////////#

##R002##
##10##
def seq0(n):
    if n == 0:
        return 7
    else:
        return seq0(n-1) + 10 * (2 ** (n-1))
print(seq0(0))  
print(seq0(1))  
print(seq0(2))  
print(seq0(3))  
print(seq0(4))  
print(seq0(5))  

#//////////////////////////////////////////////////////////////#

##R003##
##45##
def buscarSiguienteNodo(aristas, inicio):
    match aristas:
        case []:
            return
        case [[p, n], *resto]:
            if p == inicio:
                return n
            return buscarSiguienteNodo(resto, inicio)

def impGrafCir(grafo, inicio, limite):
    print(inicio)
    if inicio == limite:
        return
    siguiente = buscarSiguienteNodo(grafo, inicio)
    if siguiente:
        impGrafCir(grafo, siguiente, limite)

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
    ["JU", "AZ"]
]

print("--- De AZ a EV ---")
impGrafCir(Grafo, "AZ", "EV")

print("\n--- De AZ a GR ---")
impGrafCir(Grafo, "AZ", "GR")

#//////////////////////////////////////////////////////////////#

##R004##
##15##
def badaboom():
    def helper(n):
        match n:
            case 101:
                return []
            case _ if n % 3 == 0 and n % 5 == 0:
                return ["BadaBoom!!"] + helper(n+1)
            case _ if n % 3 == 0:
                return ["Bada"] + helper(n+1)
            case _ if n % 5 == 0:
                return ["Boom!!"] + helper(n+1)
            case _:
                return [n] + helper(n+1)
    return helper(1)
L = badaboom()
print(L)

#//////////////////////////////////////////////////////////////#

##R005##
##20##
def patch(nbyte, valor, lbin):
    match lbin:
        case []:
            return []
        case [P, *R]:
            if nbyte == 0:
                return [valor] + R
            return [P] + patch(nbyte - 1, valor, R)

L = [0xff, 0x01, 0xaa, 0xf1]
T = patch(1, 0xff, L)
print(T)  

#//////////////////////////////////////////////////////////////#

##R006##
##20##
def combinaListas(L1, L2):
    match (L1, L2):
        case ([], []):
            return []
        case ([], _):
            return L2
        case (_, []):
            return L1
        case ([x, *xs], [y, *ys]):
            return [x, y] + combinaListas(xs, ys)
R = combinaListas([1,2,3], ["a","b","c"])
print(R)  
R = combinaListas([1], ["a","b","c"])
print(R)  
R = combinaListas([1,2,3], ["a"])
print(R)  
R = combinaListas([1,2,3], [])
print(R)  
R = combinaListas([], ["a","b","c"])
print(R)  

#//////////////////////////////////////////////////////////////#

##R007##
##35##

def aplicar_recursivamente(valor, funciones):
    if valor is None:
        return None
    match funciones:
        case [f]:
            return f(valor)
        case [f, *resto]:
            return aplicar_recursivamente(f(valor), resto)
    return None

def sumar_flotantes(lista):
    match lista:
        case []:
            return 0
        case [primero, *resto]:
            return float(primero) + sumar_flotantes(resto)

lista_funciones = [
    lambda s: s.split(","),
    lambda l: [int(l[0])] + [l[1:]],
    lambda l: [l[0], l[1][0], sumar_flotantes(l[1][1:]) * 100 / len(l[1][1:])]
]

dato = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"
print(aplicar_recursivamente(dato, lista_funciones))

