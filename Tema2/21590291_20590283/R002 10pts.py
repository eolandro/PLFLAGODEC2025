##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

from pathlib import Path

def leer_lineas(monk, archivo): #
    ruta = Path(archivo)
    if not (ruta.exists() and ruta.is_file()):
        yield f"El archivo {archivo} no existe o no es un archivo válido."
        return
    with ruta.open('r', encoding='utf-8') as f:
        for linea in f:
            yield monk(linea.strip())

def separar(linea):
    return linea.split(',')

def monad(bind, iterable):
    for item in iterable:
        yield bind(item)

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)
resultado = monad(separar, lineas) # Aplicar ","

T = list(resultado)
print(T)
