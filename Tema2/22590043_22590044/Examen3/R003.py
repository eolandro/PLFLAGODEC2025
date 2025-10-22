##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea
diferente de ACTIVO
"""


from pathlib import Path
import csv

archivo_path = Path('cct22.csv')

with archivo_path.open('r', encoding='utf-8') as archivo:
    lineas = archivo.readlines()
    R = map(lambda linea: (lambda x: x.split(','))(linea.strip()), lineas)
    T = list(R)

encabezado, *datos = T

filas_activas = list(
    filter(lambda fila: fila[encabezado.index("C_ESTATUS")].strip() == "ACTIVO", datos)
)

resultado = [encabezado] + filas_activas

with archivo_path.open('w', encoding='utf-8', newline='') as archivo:
    csv.writer(archivo).writerows(resultado)

print("CSV actualizado, solo filas activas.")



