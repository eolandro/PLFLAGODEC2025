##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
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
    l = map(lambda l: [l[i] for i in range(len(l)) if i not in r], l)

    # Eliminar filas donde CONTACTO_C_EMAIL sea 'actualizar@hotmail.com' o esten vacias
    l = filter(lambda lista: lista[70] != "actualizar@hotmail.com" and lista[70] != "" and lista[70] !="  " and lista[70] != "     ",l)

    #Eliminar filas donde CONTACTO_C_TELEFONO y CONTACTO_C_CELULAR esten vacias (osea que minimo una de las dos tenga dato)
    l = filter(lambda lista: lista[68] != "" or lista[69] != "",l)
    print(list(l))

"""
    #Generar un csv para revisar el resultado
    with open("cct22_filtradoR6.csv", "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerows(l)
"""
