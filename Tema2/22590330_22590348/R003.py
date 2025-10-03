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

def impGrafCir(grafo, inicio, limite):
    def SigNod(A, N):
        match A:
            case []:
                return None
            case [P, *R]:
                D = P[1:][0]
                
                if P[0] == N:
                    return D
                else:
                    return SigNod(R, N)
    print(inicio)

    if inicio == limite:
        return

    if SigNod(grafo, inicio):
        impGrafCir(grafo, SigNod(grafo, inicio), limite)

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

impGrafCir(Grafo, "AZ", "EV")

print("---------------------------")

impGrafCir(Grafo, "AZ", "GR")