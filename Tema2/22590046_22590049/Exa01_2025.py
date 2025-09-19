#Alan Alexandr Ortega Chavez
#Brandon Ismael Trejo Hernandez



##R001##
##10##
"""
Defina una función recursiva que permita imprimir
una matriz, una matriz en realidad es una lista
de listas

M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]

def impMat(matriz):
	pass
	
impMat(M)
#[9,8,7],
#[4,5,6],
#[3,2,1]

"""

print ("\n R001 \n")

def impMat(matriz):
    if matriz == []:
        return
    (P, *R) = matriz
    print(P)
    impMat(R)

M = [
    [9,8,7],
    [4,5,6],
    [3,2,1]
]

print("matriz:")
impMat(M)

##R002##
##10##
"""
Dada la siguiente secuencia matematica
7, 17, 37, 77, 157, 317
Encuentre la función matematica recursiva
e implementela en python

def seq0():
	pass
	
seq0(0)
#7
seq0(1)
#17
seq0(2)
#37

"""

print ("\n R002 \n")
def seq0(n):
    if n == 0:
        return 7
    return seq0(n-1) + 10 * 2**(n-1)
print(seq0(0))
#7
print(seq0(1))
#17
print(seq0(2))
#37


##R003##
##45##
"""
Recorrido en un grafo circular
Defina una funcion recursiva que imprima todos
los elementos de un grafo circular

AZ → BX → CY → DW → EV
↑               ↓
FU → IT → HS → GR → FQ

Grafo = [
	["AZ","BX"],
	["BX","CY"],
	["CY","DW"],
	["DW","EV"],
	["EV","FU"],
	["FU","GR"],
	["GR","HS"],
	["HS","IT"],
	["IT","JU"],
	["JU","AZ"]
]


def impGrafCir(grafo,inicio,limite):
	pass

impGradCir(Grafo,"AZ","EV")
#AZ
#BX
#CY
#DW
#EV
impGradCir(Grafo,"AZ","GR")
#AZ
#BX
#CY
#DW
#EV
#FU
#GR
"""

print ("\n R003 \n")
def impGrafCir(grafo, inicio, fin):
    print(inicio)
    match grafo:
        case []:
            return
        case [par, *resto]:
            match par:
                case [origen, destino] if origen == inicio:
                    match inicio == fin:
                        case True:
                            return
                        case False:
                            impGrafCir(resto + [par], destino, fin)
                case otro:
                    impGrafCir(resto, inicio, fin)

# Grafo circular
Grafo = [
    ["AZ","BX"],
    ["BX","CY"],
    ["CY","DW"],
    ["DW","EV"],
    ["EV","FU"],
    ["FU","GR"],
    ["GR","HS"],
    ["HS","IT"],
    ["IT","JU"],
    ["JU","AZ"]
]

print("AZ a EV:")
impGrafCir(Grafo, "AZ", "EV")

print("\nAZ a GR:")
impGrafCir(Grafo, "AZ", "GR")
##R004##
##15##
"""
 Bada Boom!!! 
Genere e imprima una lista con los numeros del  1 al 100 
con las siguientes condiciones:
	1) si es multiplo de 3 coloque la cadena "Bada"
	2) si es multiplo de 5 coloque la cadena "Boom!!"
	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
	
def badaboom():
	pass
	
L = badaboom()
print(L)
#[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...
"""
print ("\n R004 \n")
def badaboom(L):
    match L:
        case []:
            return []
        case [P, *R]:
            if P % 15 == 0:
                return ["Bada Boom!!"] + badaboom(R)
            if P % 3 == 0:
                return ["Bada"] + badaboom(R)
            if P % 5 == 0:
                return ["Boom!!"] + badaboom(R)
            else:
                return [P] + badaboom(R)

L=[1,2,3,4,5,6,7,8,9,10,
   11,12,13,14,15,16,17,18,19,20,
   21,22,23,24,25,26,27,28,29,30,
   31,32,33,34,35,36,37,38,39,40,
   41,42,43,44,45,46,47,48,49,50,
   51,52,53,54,55,56,57,58,59,60,
   61,62,63,64,65,66,67,68,69,70,
   71,72,73,74,75,76,77,78,79,80,
   81,82,83,84,85,86,87,88,89,90,
   91,92,93,94,95,96,97,98,99,100]

print (badaboom(L))

# [1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...
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

print ("\n R005 \n")
def patch(nbyte, valor, lbin):
    match lbin:
        case []:
            return []
        case [P, *R]:
            if nbyte == 0:
                return [valor] + R
            return [P] + patch(nbyte - 1, valor, R)

L = [0xff, 0x01, 0xaa, 0xf1]
print (patch(1, 0xff, L))
print (patch(1, 0x00, L))

##R006##
##20##
"""
Una funcion toma dos listas L1 y L2, las une en una sola
combiando primer elemento de L1 con el primer elemento de L2.

Si una de las dos listas se agota simplemente une el resto de la lista a
la lista resultante


def combinaListas(L1,L2):
	pass

R = combinaListas([1,2,3],["a","b","c"])
print(R)
# [1,"a",2,"b",3,"c"]

R = combinaListas([1],["a","b","c"])
print(R)
# [1,"a","b","c"]

R = combinaListas([1,2,3],["a"])
print(R)
# [1,"a",2,3]


R = combinaListas([1,2,3],[])
print(R)
# [1,2,3]


R = combinaListas([],["a","b","c"])
print(R)
# ["a","b","c"]

"""

print ("\n R006 \n")
def combinaListas(L1,L2):
    match (L1, L2):
        case ([], []):
            return []
        case ([], R2):
            return R2
        case (R1, []):
            return R1
        case ([P1, *R1], [P2, *R2]):
            return [P1, P2] + combinaListas(R1, R2)

R = combinaListas([1,2,3],["a","b","c"])
print(R)
# [1,"a",2,"b",3,"c"]

R = combinaListas([1],["a","b","c"])
print(R)
# [1,"a","b","c"]

R = combinaListas([1,2,3],["a"])
print(R)
# [1,"a",2,3]

R = combinaListas([1,2,3],[])
print(R)
# [1,2,3]

R = combinaListas([],["a","b","c"])
print(R)
# ["a","b","c"]


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

print ("\n R007 \n")
R = "29590095,GUERRA TACITURNO LINA FERNANDA,0.7,1,1,1,1,1,1,0.7"
def CompRecursiva(V, LF):
    if V is None:
        return None
    match LF:
        case [F]:
            return F(V)
        case [F, *R]:
            return CompRecursiva(F(V), R)
    return None

def suma_float(L):
    match L:
        case []:
            return 0
        case [P, *R]:
            return float(P) + suma_float(R)

LF = [
    lambda s: s.split(","),
    lambda l: [int(l[0])] + [l[1:]],
    lambda l: [l[0], l[1][0], suma_float(l[1][1:]) * 100 / len(l[1][1:])]
]

print(CompRecursiva(R, LF))

