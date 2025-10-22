##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""

from pathlib import Path


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

    # Eliminar filas donde CONTACTO_C_EMAIL sea 'actualizar@hotmail.com' o esten vacias
    l = filter(lambda lista: lista[70] != "actualizar@hotmail.com" and lista[70] != "" and lista[70] !="  " and lista[70] != "     ",l)

    #Eliminar filas donde CONTACTO_C_TELEFONO y CONTACTO_C_CELULAR esten vacias
    l = filter(lambda lista: lista[68] != "" or lista[69] != "",l)

    # Recuperar las coordenadas geograficas del "INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO" y su clave 'CV_CCT'
    #CV_CCT esta en la columna 1 (indice 0)
    #NOMBRE_CCT esta en la columna 2 (indice 1)
    #INMUEBLE_LATITUD esta en la columna 31 (indice 30)
    #INMUEBLE_LONGITUD esta en la columna 32 (indice 31)
    l = filter(lambda lista: lista[1] == "INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO",l)
    l = map(lambda lista: (lista[0], lista[30], lista[31]), l)
    print(list(l))