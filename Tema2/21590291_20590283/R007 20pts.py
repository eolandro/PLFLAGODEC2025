##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
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

def monad(bind, iterable):
    for item in iterable:
        yield bind(item)

def filtrar_san_juan(lista):
    # Se filtra si la localidad es 'SAN JUAN DEL RO' o similar para el tec de san juan
    if any("SAN JUAN" in campo.upper() for campo in lista):
        return lista
    return None

def extraer_coords_clave(lista):
    # Según el archivo, índices aproximados para coordenadas y CV_CCT:
    # Coordenadas en campo 50 y 51 (20.386400, -99.999600)
    # CV_CCT supongamos índice 55 (cadena tipo '22INM2DBD0')
    if len(lista) > 55:
        coords = (lista[50].strip(), lista[51].strip())
        clave = lista[55].strip()
        return [clave, coords]
    return None

def monad_filter(predicate, iterable):
    for item in iterable:
        res = predicate(item)
        if res is not None:
            yield res

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)
resultado_separado = monad(separar, lineas)
filtrado_sanjuan = monad_filter(filtrar_san_juan, resultado_separado)
resultado = monad(extraer_coords_clave, filtrado_sanjuan)

T = list(resultado)
print(T)
