##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
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

def filtrar_activos(lista):
    return lista if len(lista) > 7 and lista[7].strip().upper() == "ACTIVO" else None

def filtrar_email(lista):
    if len(lista) > 48:
        email = lista[48].strip().lower()
        if email == '' or email == 'actualizar@hotmail.com':
            return None
    return lista

def filtrar_telefono_celular(lista):
    if len(lista) > 47:
        telefono = lista[46].strip()
        celular = lista[47].strip()
        if telefono == '' and celular == '':
            return None
    return lista

def monad_filter(predicate, iterable):
    for item in iterable:
        res = predicate(item)
        if res is not None:
            yield res

def eliminar_columnas(lista):
    indices_eliminar = {12,13,14,15,16,17,18,19,20,21,22,23,24,30,31,32}
    return [v for i,v in enumerate(lista) if i not in indices_eliminar]

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)
resultado_separado = monad(separar, lineas)
resultado_filtrado = monad_filter(filtrar_activos, resultado_separado)
resultado_filtrado_email = monad_filter(filtrar_email, resultado_filtrado)
resultado_filtrado_tel = monad_filter(filtrar_telefono_celular, resultado_filtrado_email)
resultado_sin_columnas = monad(eliminar_columnas, resultado_filtrado_tel)

T = list(resultado_sin_columnas)
print(T)
