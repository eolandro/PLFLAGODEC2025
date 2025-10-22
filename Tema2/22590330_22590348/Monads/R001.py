##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
from pathlib import Path

if Path("cct22.csv").exists():
    with Path("cct22.csv").open("rb") as f:
        c = f.readlines()
        print(True)
        #print(f.read())
else:
    print("El archivo no existe")
    