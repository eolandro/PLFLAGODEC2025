#22590358 Mauricio Dario Sandoval Mandujano
#22590336 Daniel Martinez Hernandez
##R001##
##10##
"""
Defina una función recursiva que permita imprimir
una matriz, una matriz en realidad es una lista
de listas
"""
M = [
    [9,8,7],
    [4,5,6],
    [3,2,1]
]

def impMat(matriz):
    if not matriz: #Comprobamos si no hay datos
        return # retornamos
    match matriz:
        case [P]: #caso hay 1 dato
            print(P) #imprimimos el dato
        case [P,*R]: #caso hay mas de un dato
            print(P), impMat(R) #imprimimos p y hacemos recursividad para imprimir los demas p

print("##R001##")
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
"""
def seq0(num):
    if not num: #si no hay numero
        return 7 #retornamos 7
    return seq0(num-1) + 10 * (2**(num-1)) # si hay numero, retornamos la suma del numero anterior hasta no encontrar numero + el calculo de la formula 10*2^(n-1)

print("\n##R002##")
print(seq0(0))
#7
print(seq0(1))
#17
print(seq0(2))
#37
print(seq0(3))
#77


##R003##
##45##
"""
Recorrido en un grafo circular
Defina una funcion recursiva que imprima todos
los elementos de un grafo circular

AZ → BX → CY → DW → EV
↑               ↓
FU → IT → HS → GR → FQ
"""

def impGrafCir(grafo, inicio, limite):
    if not grafo:
        return []
    else:
        # Obtener el primer nodo
        primer_nodo = grafo[0]
        # Obtener el segundo elemento del primer nodo
        x = primer_nodo[1:]
        # Resto de nodos
        resto_nodos = grafo[1:]

        # Si el primer elemento del primer nodo es el inicio
        if primer_nodo[0] == inicio:
            print(primer_nodo[0])

            # Comprobar si ya alcanzamos el limite
            if inicio == limite:
                return

                # Nuestro nuevo inicio sera el siguiente nodo al que apunta, razon por la que usamos x[0]
            impGrafCir(grafo, x[0], limite)
        # Buscamos en el resto de nodos
        impGrafCir(resto_nodos, inicio, limite)


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

print("\n##R003##")
impGrafCir(Grafo,"AZ","EV")
#AZ
#BX
#CY
#DW
#EV
print()
impGrafCir(Grafo,"AZ","GR")
#AZ
#BX
#CY
#DW
#EV
#FU
#GR


##R004##
##15##
"""
 Bada Boom!!! 
Genere e imprima una lista con los numeros del  1 al 100 
con las siguientes condiciones:
    1) si es multiplo de 3 coloque la cadena "Bada"
    2) si es multiplo de 5 coloque la cadena "Boom!!"
    3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
"""
def badaboom(N = 1):
    if N ==100: # condicion hasta 100 dada por el problema
        return [] #si numero llega a 100 retorna una lista vacia

    if N % 3 == 0 and N % 5 == 0: #si es multipli tanto de 3 como de 5
        return ["BadaBoom!!"] + badaboom(N + 1) #retornamos Bada Boom!! + el siguiente por recursividad

    elif N % 3 == 0: #si el numero es multiplo de 3
        return ["Bada"] + badaboom(N + 1) #retornamos Bada + el sig numero recursivo

    elif N % 5 == 0: #si es multiplo de 5
        return ["Boom!!"] + badaboom(N + 1) #retornamos Boom!! + el sig numero recursivo

    return [N] + badaboom(N + 1) #si no cumple ninguna condicion retornamos el numero + el siguiente recursivo

print("\n##R004##")
L = badaboom()
print(L)
#[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...



##R005##
##20##
"""
Un ingeniero esta estudiando un parche creado por un cracker
al usar herramientas como x64dbg se da cuenta que el parche reemplaza
el byte 343 un '0x01' por un '0x00' del binario original

Suponiendo que el binario llega en una lista, defina una funcion
que reemplace una posicion especifica de la lista por otro valor

"""


def patch(posicion, valor, lista_binaria):
    if not lista_binaria: #si no hay lista
        return [] #retornamos lista vacia

    else:
        primero = lista_binaria[0]  # tomar primer elemento
        resto = lista_binaria[1:]  # resto de la fila

        # Si es la primera posicion
        if posicion == 0:
            # retornamos el valor que ingresamos y lo concatenamos con el resto para rearmar la lista
            return [valor] + resto

        # Si no encontramos en la primera posicion  debemos de retornarle el primer elemento + la llamda recursiva
        else:
            # Ponemos un -1  para ir reduciendo la posicion hasta llegar a 0  y ahi es cuando la encontramos
            return [primero] + patch(posicion - 1, valor, resto)


L = [0xff, 0x01, 0xaa, 0xf1 ]
#[255, 1, 170, 241]

T = patch(1,0xFF,L)
print("\n##R005##")
print(T)
#[255, 255, 170, 241]


##R006##
##20##
"""
Una funcion toma dos listas L1 y L2, las une en una sola
combiando primer elemento de L1 con el primer elemento de L2.

Si una de las dos listas se agota simplemente une el resto de la lista a
la lista resultante
"""

def combinaListas(L1,L2):
    if not L1 and not L2: #Verficamos si ambas listas estan vacias
        return [] #retornamos [] debido a que no hay elementos

    if L1 and not L2: #Si la lista 1 tiene elementos, pero la lista 2 no
        return L1 #retornamos L1

    if L2 and not L1: #si la lista 2 tiene elementos pero la lista 1 no
        return L2 #retornamos L2

    return [L1[0]] + [L2[0]] + combinaListas(L1[1:],L2[1:]) #retornamos el primer val de L1 + el primer val de L2 + recursiva del restante

print("\n##R006##")
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

R = "29590095,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""
def composicion_recursiva(Valor,LF):
    if not Valor:
        return None
    match LF:
        case [F]:
            return F(Valor)
        case [F, *R]:
            return composicion_recursiva(F(Valor),R)
    return None


def StrToFloat(L):
    match L:
        case [P]:
            return [float(P)]
        case [P, *R]:
            return [float(P)] + StrToFloat(R)

def separarNcNm(L):
    match L:
        case []:
            return
        case [F,S,*R]:
            return [F,S, (sum(StrToFloat(R))/len(R)*100)]


R = "29590095,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

LF = [
    lambda S : S.split(","),
    lambda NC : [int(NC[0])] + NC[1:],
    lambda Name : separarNcNm(Name),
]

print("\n##R007##")
T = composicion_recursiva(R,LF)
print(T)
# [29590095,"ROMAY TACITURNO RENE FERNANDA",92.5]
