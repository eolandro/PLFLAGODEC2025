##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""
from pathlib import Path
ruta = Path("cct22.csv")
if ruta.is_file():
    with ruta.open(mode="r", encoding="utf-8") as archivo:
        R = map(lambda linea: linea.strip().split(','), archivo)
        R = map(lambda lista: lista, R)
        T = list(R)
        print(T)