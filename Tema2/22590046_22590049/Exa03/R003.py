##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""
from pathlib import Path
ruta = Path("cct22.csv")
print ("\n R002 \n")
with ruta.open(mode="r", encoding="utf-8") as archivo:
    R = map(lambda linea: linea.strip().split(','), archivo)
    R = map(lambda lista: lista, R)
    R = filter(lambda lista: lista[7] == "ACTIVO", R)
    T = list(R)
    print(T)