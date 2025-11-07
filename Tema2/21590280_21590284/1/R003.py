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

def sucesor(aristas, nodo):
    match aristas:
        case []:
            return None
        case [[u, v], *resto]:
            return v if u == nodo else sucesor(resto, nodo)

def impGrafCir(grafo, inicio, limite):
    print(inicio)
    if inicio == limite:
        return
    nxt = sucesor(grafo, inicio)
    if nxt is None:
        raise ValueError(f"No hay sucesor definido para {inicio}")
    impGrafCir(grafo, nxt, limite)

# Ejemplos:
impGrafCir(Grafo, "AZ", "EV")
# AZ
# BX
# CY
# DW
# EV

impGrafCir(Grafo, "AZ", "GR")
# AZ
# BX
# CY
# DW
# EV
# FU
# GR