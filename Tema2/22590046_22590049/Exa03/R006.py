##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""
from pathlib import Path

ruta = Path('cct22.csv')
if ruta.exists():
    with ruta.open("r", encoding="utf-8") as f:
        lineas = f.readlines()
        datos = map(lambda x: x.strip().split(','), lineas)
        datos = filter(lambda x: x[7] == 'ACTIVO', datos)
        quitar = [2, 3, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91]
        
        datos = map(lambda x: [x[i] for i in range(len(x)) if i not in quitar], datos)
        datos = filter(lambda x: x[70] != 'actualizar@hotmail.com' and x[70] != '', datos)
        datos = filter(lambda x: x[68] != '' or x[69] != '', datos)
        
        resultado = list(datos)
        print(resultado)

