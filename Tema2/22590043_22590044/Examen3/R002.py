##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del
archivo en una lista de listas
"""

from pathlib import Path

archivo_path = Path('cct22.csv')

with archivo_path.open('r', encoding='utf-8') as archivo:
    lineas = archivo.readlines()
    R = map(lambda linea: (lambda x: x.split(','))(linea.strip()), lineas)
    T = list(R)
    '''demaciado largo'''
print(T)
