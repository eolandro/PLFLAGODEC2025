##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""

from pathlib import Path

print("\n ----------- Ejercicio 1 -----------  \n")

def ejercicio1():
    ruta = Path('cct22.csv')
    if not ruta.exists():
        print("\nEl archivo cct22.csv no existe.")
        return
    
    with ruta.open('r', encoding='utf-8') as archivo:
        print("\nEl archivo cct22.csv se abrirá en modo lectura.\n")
        contenido = archivo.readlines()
        return contenido
    
contenido = ejercicio1()
print("\n", contenido)
print("\n--- Fin del ejercicio ---\n\n")

##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

print("\n ----------- Ejercicio 2 -----------  \n")

def ejercicio2(contenido):
    if not contenido:
        print("\nSin datos.\n")
        return 
    print("\nEl archivo se ha separado en listas.\n")
    return list(map(lambda linea: linea.strip().split(','), contenido))

datos = ejercicio2(contenido)
print('\n'.join(map(str, datos))) 
print("\n--- Fin del ejercicio ---\n\n")

##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""
print("\n ----------- Ejercicio 3 -----------  \n")

def ejercicio3(datos):
    if not datos:
        print("\nSin datos.\n")
        return 
    print("\nFiltrando filas....'\n")
    encabezado = datos[0]
    estatus = encabezado.index('C_ESTATUS')

    activos = filter(lambda fila: fila[estatus] == 'ACTIVO', datos[1:])
    return [encabezado] + list(activos)

activos = ejercicio3(datos)
print('\n'.join(map(str, activos)))
print("\n--- Fin del ejercicio ---\n\n")

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

print("\n ----------- Ejercicio 4 -----------  \n")

def ejercicio4(datos):
    if not datos:
        print("\nSin datos.\n")
        return 
    print("\nEliminando columnas específicas...\n")

    columnas_eliminar = [
        'CV_TIPO', 'C_TIPO',
        'TIPONIVELSUB_CV_SERVICION1', 'TIPONIVELSUB_C_SERVICION1',
        'TIPONIVELSUB_CV_SERVICION2', 'TIPONIVELSUB_C_SERVICION2',
        'TIPONIVELSUB_CV_SERVICION3', 'TIPONIVELSUB_C_SERVICION3',
        'C_SERVICIO_CAM',
        'CARACTERISTCA_CV_CARACTERIZAN1', 'CARACTERISTCA_C_CARACTERIZAN1',
        'CARACTERISTCA_CV_CARACTERIZAN2', 'CARACTERISTCA_C_CARACTERIZAN2',
        'C_TUNO_1', 'C_TUNO_2', 'C_TUNO_3'
    ]

    encabezado = datos[0]
    indices_eliminar = list(
        map(lambda col: encabezado.index(col), filter(lambda c: c in encabezado, columnas_eliminar))
    )

    eliminar = lambda fila: list(map(lambda i_val: i_val[1],
        filter(lambda iv: iv[0] not in indices_eliminar, enumerate(fila)))
    )

    return list(map(eliminar, datos))

columnas_eli = ejercicio4(activos)
print('\n'.join(map(str, columnas_eli)))
print("\n--- Fin del ejercicio ---\n\n")

##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""

print("\n ----------- Ejercicio 5 -----------  \n")

def ejercicio5(datos):
    if not datos:
        print("\nSin datos.\n")
        return 

    encabezado = datos[0]
    email = encabezado.index('CONTACTO_C_EMAIL')
    filtrar_email = lambda fila: fila[email] not in ['', 'actualizar@hotmail.com']
    filtrados = list(filter(filtrar_email, datos[1:]))
    return [encabezado] + filtrados

columnas_email = ejercicio5(columnas_eli)
print('\n'.join(map(str, columnas_email)))
print("\n--- Fin del ejercicio ---\n")

##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""

print("\n ----------- Ejercicio 6 -----------  \n")

def ejercicio6(datos):
    if not datos:
        print("\nSin datos.\n")
        return

    encabezado = datos[0]
    telefono = encabezado.index('CONTACTO_C_TELEFONO')
    celular = encabezado.index('CONTACTO_C_CELULAR')

    filtrar_telefonos = lambda fila: not (fila[telefono] == '' and fila[celular] == '')
    datos_filtrados = list(filter(filtrar_telefonos, datos[1:]))
    return [encabezado] + datos_filtrados



telefonos_filtrados = ejercicio6(columnas_email)
print('\n'.join(map(str, telefonos_filtrados)))
print("\n--- Fin del ejercicio ---\n")

##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""

print("\n ----------- Ejercicio 7 -----------  \n")

def ejercicio7(datos):
    if not datos:
        print("\nSin datos.\n")
        return 

    encabezado = datos[0]
    nombre = encabezado.index('C_NOMBRE')
    latitud = encabezado.index('INMUEBLE_LATITUD')
    longitud = encabezado.index('INMUEBLE_LONGITUD')
    cv_cct = encabezado.index('CV_CCT')

    filtradas = filter(lambda fila: fila[nombre] == 'INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO', datos[1:])
    extraer_coord = lambda fila: [fila[cv_cct], fila[latitud], fila[longitud]]
    resultado = list(map(extraer_coord, filtradas))
    return resultado

coordenadas = ejercicio7(telefonos_filtrados)

print('\n'.join(map(str, coordenadas)))
print("\n--- Fin del ejercicio ---\n")