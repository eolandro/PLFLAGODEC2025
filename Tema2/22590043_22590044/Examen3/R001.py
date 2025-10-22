##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
from pathlib import Path

p = Path("cct22.csv")

def comprobar_lectura(path: Path) -> None:
    if not path.exists():
        print("NO")
        return
    if not path.is_file():
        print("NO")
        return
    try:
        with path.open("r", encoding="utf-8") as fh:
            fh.read(1)
        print(f'El archivo existe y lo puedo leer el archivo ')
    except Exception:
        print("NO")

if __name__ == "__main__":
    comprobar_lectura(p)


