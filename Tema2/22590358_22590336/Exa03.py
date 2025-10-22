# 22590336 DANIEL MARTINEZ HERNANDEZ
# 22590358 MAURICIO DARIO SANDOVAL MANDUJANO

##R001##
##10##

"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
print("")
print(" * * * REACTIVO 1 * * * \n" )
from pathlib import Path
file_path = Path('cct22.csv')
if file_path.exists():
    with file_path.open('r', encoding='utf-8') as f:
        print("ARCHIVO ABIERTO \n")
        contents = f.read()
        #print(contents)
else:
    print("The file does not found")


##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

# split() divide una cadena en una lista de subcadenas usando un delimitador
# strip() elimina los caracteres de espacios en blanco


print(" * * * REACTIVO 2 * * *\n")
with file_path.open('r', encoding='utf-8') as file:

    # Dividir cada linea en campos y quitar los espacios en blanco
    R = map(lambda linea: linea.strip().split(','), file)
    R = map(lambda lista: lista[:-1],R) # quitar una columna vacia
    resultado = list(R)[1:] # quitar encabezados

print("Convertido a lista de listas R2")
print(f"Longitud de la lista 2 : {len(resultado)} filas activas \n")


print(" * * * REACTIVO 3 * * *\n")
##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""

R = filter(lambda lista: lista[7] in ['ACTIVO'],resultado)
lista_activos = list(R)

print(f"Longitud de la lista 3 solo conservamos los activos : {len(lista_activos)} \n ")


##R004##
##30##

print(" * * * REACTIVO 4 * * *\n")
"""
Del ejercicio anterior, retira todas las siguientes columnas
CV_TIPO,C_TIPO 2,3
TIPONIVELSUB_CV_SERVICION1, 81 
TIPONIVELSUB_C_SERVICION1, 82
TIPONIVELSUB_CV_SERVICION2,	 83
TIPONIVELSUB_C_SERVICION2, 84 
TIPONIVELSUB_CV_SERVICION3, 85
TIPONIVELSUB_C_SERVICION3, 86 
C_SERVICIO_CAM, 87
CARACTERISTCA_CV_CARACTERIZAN1, 88
CARACTERISTCA_C_CARACTERIZAN1, 89
CARACTERISTCA_CV_CARACTERIZAN2, 90
CARACTERISTCA_C_CARACTERIZAN2 91
C_TUNO_1,C_TUNO_2,C_TUNO_3  78, 79 ,80 
"""

print("Cantidad de columnas antes", len(lista_activos[0]))

# enumerate devuelve (índice, valor)

columnas_a_eliminar = [2, 3, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91]

R = map(lambda fila: [
    # Por cada columna  vamos a iterar sobre su valor y su indice para ver si pertenece a 
    # las columnas a eliminar
    columna for indice, columna in enumerate(fila)  
    # Si el indice no esta dentro de las columnas a eliminar  puedes consevarlo
    if indice not in columnas_a_eliminar
], lista_activos)

lista_final = list(R)

print("Cantidad de columnas despues", len(lista_final[0]))
print("")

##R005##
##20##

print(" * * * REACTIVO 5 * * * \n")
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""

#  El email estaba en la columna numero 72, pero como se eliminaron las columnas  2 y 3  seria la numero 70

R = filter(lambda lista: lista[70] not in  ['actualizar@hotmail.com',''],lista_final)
lista_sin_email = list(R)

print(f"Longitud de la lista 5 eliminando los que no tienen email: {len(lista_sin_email)} \n")

##R006##
##20##
print(" * * * REACTIVO 6 * * * \n")
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""

# CONTACTO_C_TELEFONO ERA LA NUMERO 70 -> 68
# CONTACTO_C_CELULAR ERA LA NUMERO 71  -> 69

R = filter(lambda lista: lista[68] != '' or lista[69] != '', lista_sin_email)
lista_sin_telefono = list(R)
print(f"Longitud de la lista 6  posterior a eliminar las que no tienen telefono y celular : {len(lista_sin_telefono)} \n")

##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""
# Las coordenadas estaban en las columnas 32 y 33 por lo tanto ahora son la 30 y 31

#for fila in lista_sin_telefono:
#   print(fila,"\n")

print("*** REACTIVO 7 *** \n")
R = filter(lambda lista: lista[1] == "INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO", lista_sin_telefono)
Tec = list(R)

if len(Tec) > 0:
    print("INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO ENCONTRADO")
    print("Mostrando Informacion ...")
    print("'CV_CCT:",Tec[0][0], "Latitud:",Tec[0][30],"Longitud:",Tec[0][31] )
    print("\n")



##R008##
##50##
"""
Un visor hexadecimal es un programa que permite visualizar el contenido
de cualquier archivo, byte a byte en formato hexadecimal

por ejemplo si abres un block de notas y escribes la palabra "hola"
y lo guardas con el nombre de saludo.txt se veria en un visor 
hexadecimal de la siguite manera:

========================================================================
eolandro@eolap:~$ hd saludo.txt 
00000000  68 6f 6c 61                                       |hola|
00000004
========================================================================

Realiza un programa que pida dos archivos uno de origen y otro de destino.
Vas a leer el archivo de origen byte por byte y lo vas a guardar en el
archivo de destino pero en formato hexadecimal, ten cuidado no debes
cargar el archivo completo en memoria en un solo paso
Un Ejemplo con el ya mencionado archivo saludo.txt:

========================================================================
python visorhexa.py
Dame el nombre del archivo de origen: saludo.txt
Dame el nombre del archivo de destino: saludo_hex.txt
Listo!
========================================================================

Si abrimos saludo_hex.txt
veriamos 

68 6F 6C 61

"""
##R009##
##10##
"""
Procesar data

Utilizando el patron de diseño composicion con generadores
obten la salida correspondiente:

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = compoGen(R)
next(T)
R = T.next(fun0)
R = T.next(fun1)
R = T.next(fun2)
R = T.next(fun3) #...
R = T.next(None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""
