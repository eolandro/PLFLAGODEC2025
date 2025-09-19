#Abelardo Garduño Fuertes 22590040
#Alejandro Pérez Piña 22590068

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
"""

#Respuesta
def impMat(matriz):
    match matriz:
        case []:
            return
        case [F, *R]:  
            print(F)
            impMat(R)        
M = [
	[9,8,7],
	[4,5,6],
	[3,2,1]
]

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
#Respuesta
def seq0(n): #ya esta
    if n==0:
        return 7
    return seq0(n-1)+10*2**(n-1)

print(seq0(4))

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
#Respuesta
def impGrafCir(grafo, inicio, limite): #ya esta
    if inicio == limite:
        print(inicio)
        return
    match grafo:
        case [[P, Q], *R]:
            if P == inicio:
                print(inicio)
                impGrafCir(grafo, Q, limite)
            else:
                impGrafCir(R, inicio, limite)

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

impGrafCir(Grafo,"AZ","EV")
print("-----------------------")
impGrafCir(Grafo,"AZ","GR")

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
#Respuesta
def badaboom(n=1): #Ya esta
    if n>100:
        return[]
    else:
        if n%3==0 and n%5==0:
            return ["Bada Boom!!"]+badaboom(n+1)
        if n%3 == 0:
            return ["Bada"]+badaboom(n+1)
        if n%5 == 0:
            return ["Boom!!"]+badaboom(n+1)
        return [n]+badaboom(n+1)

L=badaboom()
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
#Respuesta
def patch(nbyte,valor,lbin,n=0): #ya esta
        match lbin:
            case[P,*R]:
                if nbyte!=n:
                    return [P]+patch(nbyte,valor,R,n+1)
                return [valor]+R

#    255    1     170    241
L = [0xff, 0x01, 0xaa, 0xf1 ]
T = patch(1,0xff,L)
print(T)

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
#Respuesta
def combinaListas(L1,L2):
    match (L1,L2):
        case (R1,[]):
            return R1
        case ([],R2):
            return R2
        case ([P1,*R1], [P2,*R2]):
            return[P1,P2] + combinaListas(R1,R2)
            



# Pruebas
R = combinaListas([1,2,3],["a","b","c"])
print(R)  # [1,"a",2,"b",3,"c"]

R = combinaListas([1],["a","b","c"])
print(R)  # [1,"a","b","c"]

R = combinaListas([1,2,3],["a"])
print(R)  # [1,"a",2,3]

R = combinaListas([1,2,3],[])
print(R)  # [1,2,3]

R = combinaListas([],["a","b","c"])
print(R)



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
#Respuesta
R = "29590095,hola,0.7,1,1,1,1,1,1,0.7"

def compRecursiva(Valor, LF):
    if Valor == None:
        return None
    match LF:
        case [F]:
            return F(Valor)
        case [F, *R]:
            return compRecursiva(F(Valor), R)
    return None

def listaStrInt(L):
    match L:
        case [A]:
            return [int(A)]
        case [P,*R]:
            return [int(P)] + listaStrInt(R)

def listaStrFloat(L):
    match L:
        case [A]:
            return [float(A)]
        case [P, *R]:
            return [float(P)] + listaStrFloat(R)
        
def listastr(L):
    match L:
        case [A]:
            return [str(A)]
        case [P, *R]:
            return [str(P)] + listastr(R)
        

ListaFuncion = [
    
    lambda s: s.split(","),    
    lambda l: listaStrInt([l[0]]) + (l[1:])
    #lambda l: listaStrInt([l[0]]) + listastr((l[1])) + listaStrFloat([(sum(l[2:]) / len(l[2:]))*100])                     

]

print(compRecursiva(R,ListaFuncion))
