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
# Grafo dado como lista de aristas
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
## Opcion 1 No funciono porque muestra los nodos duplicados
'''
def impGrafCir(grafo, inicio, limite):
    print(inicio)
    if inicio == limite:
        return
    
    match grafo:
        case []:
            return
        case [[origen, destino], *resto]:
            if origen == inicio:
                impGrafCir(grafo, destino, limite)
            else:
                impGrafCir(resto, inicio, limite)
'''

## Opcion 2 Si funciono pero usa el disenio de composicion recursiva
def impGrafCir_Comp(grafo, inicio, limite): #Funcion principal que maneja la recursividad
    print(inicio)
    if inicio == limite:
        return
    SigNodo = BuscarSigNodo(grafo, inicio)
    if SigNodo is not None:
        impGrafCir_Comp(grafo, SigNodo, limite)

def BuscarSigNodo(grafo, NodoActual): #Funcion que busca el siguiente nodo
    match grafo:
        case []:
            return None
        case [[ori, des], *res]:
            if ori == NodoActual:
                return des
            return BuscarSigNodo(res, NodoActual)



print("Prueba de AZ a EV:")
impGrafCir_Comp(Grafo, "AZ", "EV")

print("\nPrueba de AZ a GR:")
impGrafCir_Comp(Grafo, "AZ", "GR")



