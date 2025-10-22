##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""
from pathlib import Path

ruta = Path("cct22.csv")

if ruta.exists():
    with ruta.open("r", encoding="utf-8") as f:
        lineas = f.readlines()
        
    datos = map(lambda l: l.strip().split(","), lineas)
    activos = filter(lambda l: l[7] == "ACTIVO", datos)
    quitar = [2, 3, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91]
    limpio = map(lambda l: [l[i] for i in range(len(l)) if i not in quitar], activos)
    limpio = filter(lambda l: l[70] != "actualizar@hotmail.com" and l[70] != "", limpio)
    
    resultado = list(limpio)
    print(resultado)


