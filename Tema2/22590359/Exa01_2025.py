'''
Isaac Jonathan Santos Rojas
22590359
18 de Septiembre del 2025
'''

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
print(" ##R01## ".center(60,"-"))
M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]

def impMat(matriz):
     match matriz:
         case []:
             return
         case[fila, *demas]:
             print(fila)
             impMat(demas)
	
impMat(M)
#[9,8,7],
#[4,5,6],
#[3,2,1]


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
print()
print(" ##R02## ".center(60,"-"))
def seq0(n):
    if n == 0:
        return 7
    else:
        return 2 * seq0(n-1) + 3
    
print(seq0(0))
#7
print(seq0(1))
#17
print(seq0(2))
#37
print(seq0(3))
#77

print()
print(" ##R03## ".center(60,"-"))

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

print()
print(" ##R04## ".center(60,"-"))
def badaboom(n = 1): #Porque siempre se va a empezar desde 1
    if n > 100: #Hasta 100 
        return []
    if n % 15 == 0: #Porque 3 * 5 = 15, entonces englobo todos los números múltiplos de 3 pero también de 5.
        return ["Bada Boom!!"] + badaboom(n+1)
    if n % 3 == 0:
        return ["Bada"] + badaboom(n+1)
    if n % 5 == 0:
        return ["Boom!!"] + badaboom(n+1)
    else:
        return [n] + badaboom(n+1)

L = badaboom()
print(L)

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
print()
print(" ##R05## ".center(60,"-"))
def patch(nbyte, valor, lbin, pos=0):
    match lbin:
        case []:
            return []
        case [actual, *resto]:
            if pos == nbyte:
                return [valor] + patch(nbyte, valor, resto, pos+1)
            else:
                return [actual] + patch(nbyte, valor, resto, pos+1)

L = [0xff, 0x01, 0xaa, 0xf1]
T = patch(1,0xFF,L)
print(T)
#[255, 255, 170, 241]


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
print()
print(" ##R06## ".center(60,"-"))
def combinaListas(L1, L2):
    match (L1, L2):
        case ([], []):
            return []
        case ([primer1, *resto1], []):
            return [primer1] + combinaListas(resto1, [])
        case ([], [primer2, *resto2]):
            return [primer2] + combinaListas([], resto2)
        case ([primer1, *resto1], [primer2, *resto2]):
            return [primer1, primer2] + combinaListas(resto1, resto2)

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
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""
print()
print(" ##R07## ".center(60,"-"))
Data = "22590095,GUERRA TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

def composicion_recursiva(Valor,LF):#Siempre tiene un valor y una lista de funciones (LF)
    if Valor == None:
        return None
    match LF:
        case [F]:
            return F(Valor)
        case [F,*R]:
            return composicion_recursiva(F(Valor),R)
    return None

def straNum(Lista):
    match Lista:
        case [U]:
            return [float(U)]
        case [U,*R]:
            return [float(U)] + straNum(R)


ListaFuncion = [
    lambda dato: dato.split(','),
    lambda l: [l[0]] + [l[1:][0]] + straNum(l[1:][1:]),
    lambda l: [l[0]] + [l[1:][0]] + [(sum(l[1:][1:]) / len(l[1:][1:])*100)]

]

print(composicion_recursiva(Data,ListaFuncion))
print()
print("Alumno: Isaac Jonathan Santos Rojas - 22590359\n")