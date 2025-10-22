##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
from pathlib import Path


def verificarArchivo(nombre_archivo): # Generador para verificar el archivo antes de abrirlo
    ruta = Path(nombre_archivo)
    existe = ruta.exists() and ruta.is_file()
    yield existe  # Devuelve True o False si el archivo existe o no (True/False)

    if not existe:
        yield f"El archivo {nombre_archivo} no existe o no es un archivo válido."
    else:
        with ruta.open('r', encoding='utf-8') as archivo:
            contenido = archivo.read()
            yield contenido  # Devuelve el contenido del archivo


T = verificarArchivo("cct22.csv") # Uso del generador con composición
print(next(T))     # Muestra si el archivo existe
print(next(T))     # Si existe, muestra el contenido; si no, muestra un mensaje
