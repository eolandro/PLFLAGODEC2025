##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""
from pathlib import Path
import csv

archivo_path = Path('cct22.csv')

with archivo_path.open('r', encoding='utf-8') as archivo:
    lineas = archivo.readlines()
    R = map(lambda linea: (lambda x: x.split(','))(linea.strip()), lineas)
    T = list(R)

encabezado, *datos = T

filas_filtradas = list(
    filter(
        lambda fila: fila[encabezado.index("CONTACTO_C_TELEFONO")].strip() not in (""," ", "null")
                     and fila[encabezado.index("CONTACTO_C_CELULAR")].strip() not in (""," ", "null"),
        datos
    )
)

resultado = [encabezado] + filas_filtradas

with archivo_path.open('w', encoding='utf-8', newline='') as archivo:
    csv.writer(archivo).writerows(resultado)

print("CSV actualizado, filas con teléfono y celular vacíos o 'null' eliminadas.")
