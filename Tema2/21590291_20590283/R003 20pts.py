
##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
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

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)  # Leer líneas sin modificar
resultado = map(separar, lineas)            # Separar cada línea por ','
resultado_filtrado = filter(filtrar_activos, resultado)  # Filtrar solo filas activas
T = list(resultado_filtrado)
print(T)

