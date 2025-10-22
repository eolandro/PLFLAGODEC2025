##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""

from pathlib import Path
#import csv

with Path("cct22.csv").open("r",encoding="utf-8") as f:
    l = map(lambda linea: linea.strip().split(","),f)
    l = map(lambda lista: lista[0:],l)

    # C_ESTATUS esta en la fila 8 (0---7)
    l = filter(lambda lista: lista[7] == "ACTIVO" or lista[7] == "C_ESTATUS",l)
    print((list(l)))

"""
    #Generar un csv para revisar el resultado
    with open("cct22_filtradoR3.csv", "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerows(l)
"""