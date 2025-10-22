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

def leer_lineas(monk, archivo):
    ruta = Path(archivo)
    if not (ruta.exists() and ruta.is_file()):
        yield f"El archivo {archivo} no existe o no es un archivo válido."
        return
    with ruta.open('r', encoding='utf-8') as f:
        for linea in f:
            yield monk(linea.strip())

def separar(linea):
    return linea.split(',')

def filtrar_activos(lista):
    return len(lista) > 7 and lista[7].strip().upper() == "ACTIVO"

def eliminar_columnas(lista, indices_eliminar):
    return list(map(lambda iv: iv[1], filter(lambda iv: iv[0] not in indices_eliminar, enumerate(lista))))

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)
resultado = map(separar, lineas)
resultado_filtrado = filter(filtrar_activos, resultado)
resultado_final = map(lambda l: eliminar_columnas(l, {2, 3, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 56, 57, 58}), resultado_filtrado)
T = list(resultado_final)
print(T)

