##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
from pathlib import Path
ruta = Path("cct22.csv")
if ruta.exists():
    print("se encontro el archivo cct22.csv")
    with ruta.open(mode="r", encoding="utf-8") as archivo:
        print(archivo.readlines())
else:
    print("No se ha encontrado el archivo")