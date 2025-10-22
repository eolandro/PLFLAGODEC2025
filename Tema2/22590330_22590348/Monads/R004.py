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
#import csv

with Path("cct22.csv").open("r",encoding="utf-8") as f:
    c = f.readlines()
    l = map(lambda linea: linea.strip().split(","),c)
    l = map(lambda lista: lista[0:],l)

    # C_ESTATUS esta en la columna 8 (0---7)
    l = filter(lambda lista: lista[7] == "ACTIVO" or lista[7] == "C_ESTATUS",l)

    # Retirar las columnas indicadas
    fil = ["CV_TIPO","C_TIPO","TIPONIVELSUB_CV_SERVICION1","TIPONIVELSUB_C_SERVICION1","TIPONIVELSUB_CV_SERVICION2","TIPONIVELSUB_C_SERVICION2","TIPONIVELSUB_CV_SERVICION3","TIPONIVELSUB_C_SERVICION3","C_SERVICIO_CAM","CARACTERISTCA_CV_CARACTERIZAN1","CARACTERISTCA_C_CARACTERIZAN1","CARACTERISTCA_CV_CARACTERIZAN2","CARACTERISTCA_C_CARACTERIZAN2","C_TUNO_1","C_TUNO_2","C_TUNO_3"]
    l = list(l)
    r = [i for i in range(len(l[0])) if l[0][i] in fil]
    l = map(lambda lista: [lista[i] for i in range(len(lista)) if i not in r], l)
    print(list(l))

"""
    #Generar un csv para revisar el resultado
    with open("cct22_filtradoR4.csv", "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerows(l)
"""