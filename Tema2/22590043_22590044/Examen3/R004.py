##R004##
##30##
"""
Del ejercicio anterior, retira todas las siguientes columnas
CV_TIPO,C_TIPO
TIPONIVELSUB_CV_SERVICION1,
TIPONIVELSUB_C_SERVICION1,
TIPONIVELSUB_CV_SERVICION2,
TIPONIVELSUB_C_SERVICION2,
TIPONIVELSUB_CV_SERVICION3,
TIPONIVELSUB_C_SERVICION3,
C_SERVICIO_CAM,
CARACTERISTCA_CV_CARACTERIZAN1,
CARACTERISTCA_C_CARACTERIZAN1,
CARACTERISTCA_CV_CARACTERIZAN2,
CARACTERISTCA_C_CARACTERIZAN2
C_TUNO_1,C_TUNO_2,C_TUNO_3

"""

from pathlib import Path
import csv

archivo_path = Path('cct22.csv')

# Leer y convertir el CSV a lista de listas (como en el ejercicio anterior)
with archivo_path.open('r', encoding='utf-8') as archivo:
    lineas = archivo.readlines()
    R = map(lambda linea: (lambda x: x.split(','))(linea.strip()), lineas)
    T = list(R)

cols_a_eliminar = [
    "CV_TIPO", "C_TIPO",
    "TIPONIVELSUB_CV_SERVICION1", "TIPONIVELSUB_C_SERVICION1",
    "TIPONIVELSUB_CV_SERVICION2", "TIPONIVELSUB_C_SERVICION2",
    "TIPONIVELSUB_CV_SERVICION3", "TIPONIVELSUB_C_SERVICION3",
    "C_SERVICIO_CAM",
    "CARACTERISTCA_CV_CARACTERIZAN1", "CARACTERISTCA_C_CARACTERIZAN1",
    "CARACTERISTCA_CV_CARACTERIZAN2", "CARACTERISTCA_C_CARACTERIZAN2",
    "C_TUNO_1", "C_TUNO_2", "C_TUNO_3"
]

encabezado, *datos = T

indices_conservar = list(
    filter(lambda i: encabezado[i] not in cols_a_eliminar, range(len(encabezado)))
)

resultado = list(
    map(lambda fila: [fila[i] for i in indices_conservar], [encabezado] + datos)
)

with archivo_path.open('w', encoding='utf-8', newline='') as archivo:
    csv.writer(archivo).writerows(resultado)

print("CSV actualizado, columnas eliminadas correctamente.")
