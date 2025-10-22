##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""

from pathlib import Path
import csv

archivo_path = Path('cct22.csv')

# Leer CSV y convertir en lista de listas
with archivo_path.open('r', encoding='utf-8') as archivo:
    lineas = archivo.readlines()
    R = map(lambda linea: (lambda x: x.split(','))(linea.strip()), lineas)
    T = list(R)

encabezado, *datos = T

R = filter(lambda fila: any("SAN JUAN" and "TEC" in celda.upper() for celda in fila), datos)

# Tomar solo las columnas que interesan
R = map(lambda fila: {
    "CV_CCT": fila[encabezado.index("CV_CCT")],
    "LATITUD": fila[encabezado.index("INMUEBLE_LATITUD")],
    "LONGITUD": fila[encabezado.index("INMUEBLE_LONGITUD")]
}, R)

print(list(R))

