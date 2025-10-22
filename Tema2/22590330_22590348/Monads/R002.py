##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

from pathlib import Path

with Path("cct22.csv").open("r",encoding="utf-8") as f:
    l = map(lambda linea: linea.strip().split(','),f)
    l = map(lambda lista: lista[0:],l)
    print(list(l))