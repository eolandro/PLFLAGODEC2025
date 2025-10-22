##R004##
##30##
"""
Del ejercicio anterior, retira todas las siguientes columnas
CV_TIPO,C_TIPO
TIPONIVELSUB_CV_SERVICION1,
TIPONIVELSUB_C_SERVICION1,
TIPONIVELSUB_CV_SERVICION2,	
TIPONIVELSUB_C_SERVICION2,
TIPONIVELSUB_CV_SERVICION3,
TIPONIVELSUB_C_SERVICION3,
C_SERVICIO_CAM,
CARACTERISTCA_CV_CARACTERIZAN1,
CARACTERISTCA_C_CARACTERIZAN1,
CARACTERISTCA_CV_CARACTERIZAN2,
CARACTERISTCA_C_CARACTERIZAN2
C_TUNO_1,C_TUNO_2,C_TUNO_3

"""
    
from pathlib import Path

ruta = Path("cct22.csv")

if ruta.is_file():
    with ruta.open(mode="r", encoding="utf-8") as f:
        contenido = f.readlines()

        filas = map(lambda x: x.strip().split(","), contenido)
        activas = filter(lambda x: len(x) > 7 and x[7] == "ACTIVO", filas)

        quitar = [2, 3, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91]
        resultado = map(lambda x: [col for i, col in enumerate(x) if i not in quitar], activas)

        lista_final = list(resultado)
        print(lista_final)

