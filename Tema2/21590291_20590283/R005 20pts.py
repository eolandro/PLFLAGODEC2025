
##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""

'''
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

def filtrar_email(lista):
    if len(lista) > 59:
        email = lista[59].strip().lower()
        if email == '' or email == 'actualizar@hotmail.com':
            return False
        else:
            return True
    return False  # Si la fila no tiene suficiente longitud, descarta

def eliminar_columnas(lista, indices_eliminar):
    return [v for i, v in enumerate(lista) if i not in indices_eliminar]

archivo = "cct22.csv"
lineas = leer_lineas(lambda x: x, archivo)
resultado = map(separar, lineas)

resultado_filtrado = filter(filtrar_activos, resultado)
resultado_filtrado_email = filter(filtrar_email, resultado_filtrado)
indices_eliminar = {2, 3, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69}
resultado_final = map(lambda l: eliminar_columnas(l, indices_eliminar), resultado_filtrado_email)

T = list(resultado_final)
print(T)
'''



