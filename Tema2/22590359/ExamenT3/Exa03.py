##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""
print(" ##R01## ".center(60,"-"))

from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")
	
with archivo_path.open('r', encoding='utf-8') as archivo:
	print(f"{archivo_path} abierto correctamente")

##R002##
##10##
print()
print(" ##R02## ".center(60,"-"))

"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")
	
with archivo_path.open('r', encoding='utf-8') as archivo:
	R = map(lambda linea : linea.strip().split(','),archivo)
	T = list(R)
	print(f"No imprimo la información porque es mucha, pero seria un 'print(T)'\nPero si hace la lista de listas.")
	#print(T)

##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""
print()
print(" ##R03## ".center(60,"-"))
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")
	
with archivo_path.open('r', encoding='utf-8') as archivo:
	R = map(lambda linea : linea.strip().split(','),archivo)
	R = filter(lambda lista: lista[7] == 'ACTIVO', R)
	print("Se filtró exitosamente")
	T = list(R)
	#print(T)

archivo_salida = Path('cct22_activos.csv')
with archivo_salida.open('w', encoding='utf-8') as salida:
	lineas = map(lambda registro: ','.join(registro) + '\n', T) #<-- cada lista a string y la pega con el join.
	salida.writelines(lineas)
	print(f"Archivo {archivo_salida} creado para ver los cambios aplicados\n(Elimina en C_ESTATUS si es diferente de 'ACTIVO')")

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
print()
print(" ##R04## ".center(60,"-"))
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")

indices_a_eliminar = [2,3,81,82,83,84,85,86,87,88,89,90,91,78,79,80]
with archivo_path.open('r', encoding='utf-8') as archivo:
	lineas = archivo.readlines()
	encabezados = lineas[0].strip().split(',')
	nuevose = [encabezados[columna] for columna in range(len(encabezados)) if columna not in indices_a_eliminar]
	print(f"Columnas originales: {len(encabezados)}")
	print(f"Columnas a eliminar: {len(indices_a_eliminar)}")
	print(f"Columnas ahora: {len(nuevose)}")
	
	R = map(lambda linea : linea.strip().split(','),lineas)
	R = map(lambda registro: [registro[columna] for columna in range(len(registro)) if columna not in indices_a_eliminar],R)
	R = filter(lambda lista: lista[5] == 'ACTIVO', R)
	T = list(R)
	#print(T)

archivo_salida = Path('cct22_menos_columnas.csv')
with archivo_salida.open('w', encoding='utf-8') as salida:
	lineas = map(lambda registro: ','.join(registro) + '\n', T) #<-- cada lista a string y la pega con el join.
	salida.writelines(lineas)
	print(f"Archivo {archivo_salida} creado para ver los cambios aplicados")

##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""
print()
print(" ##R05## ".center(60,"-"))
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")

indices_a_eliminar = [2,3,81,82,83,84,85,86,87,88,89,90,91,78,79,80]
with archivo_path.open('r', encoding='utf-8') as archivo:
	lineas = archivo.readlines()
	encabezados = lineas[0].strip().split(',')
	nuevose = [encabezados[columna] for columna in range(len(encabezados)) if columna not in indices_a_eliminar]
	
	R = map(lambda linea : linea.strip().split(','),lineas)
	R = map(lambda registro: [registro[columna] for columna in range(len(registro)) if columna not in indices_a_eliminar],R)
	R = filter(lambda lista: lista[5] == 'ACTIVO', R)
	R = filter(lambda lista: lista[70] != 'actualizar@hotmail.com' and lista[70].strip() != '',R)
	T = list(R)
	#print(T)

archivo_salida = Path('cct22_EMAIL_actualizar.csv')
with archivo_salida.open('w', encoding='utf-8') as salida:
	lineas = map(lambda registro: ','.join(registro) + '\n', T) #<-- cada lista a string y la pega con el join.
	salida.writelines(lineas)
	print(f"Archivo {archivo_salida} creado para ver los cambios aplicados en EMAIL")

##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""
print()
print(" ##R06## ".center(60,"-"))
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")

indices_a_eliminar = [2,3,81,82,83,84,85,86,87,88,89,90,91,78,79,80]
with archivo_path.open('r', encoding='utf-8') as archivo:
	lineas = archivo.readlines()
	encabezados = lineas[0].strip().split(',')
	nuevose = [encabezados[columna] for columna in range(len(encabezados)) if columna not in indices_a_eliminar]
	
	R = map(lambda linea : linea.strip().split(','),lineas)
	R = map(lambda registro: [registro[columna] for columna in range(len(registro)) if columna not in indices_a_eliminar],R)
	R = filter(lambda lista: lista[5] == 'ACTIVO', R)
	R = filter(lambda lista: lista[70] != 'actualizar@hotmail.com' and lista[70].strip() != '',R)
	R = filter(lambda lista: lista[69].strip() != '' or lista[68].strip() != '',R)
	T = list(R)
	#print(T)

archivo_salida = Path('cct22_TELEFONOS.csv')
with archivo_salida.open('w', encoding='utf-8') as salida:
	lineas = map(lambda registro: ','.join(registro) + '\n', T) #<-- cada lista a string y la pega con el join.
	salida.writelines(lineas)
	print(f"Archivo {archivo_salida} creado para ver los cambios aplicados en TELEFONOS")

##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""
print()
print(" ##R07## ".center(60,"-"))
from pathlib import Path

archivo_path = Path('cct22.csv')

if not archivo_path.exists():
	print(f"ERROR: El archivo {archivo_path} no existe")
	
if not archivo_path.is_file():
	print(f"ERROR: El {archivo_path} no es un archivo")

indices_a_eliminar = [2,3,81,82,83,84,85,86,87,88,89,90,91,78,79,80]
with archivo_path.open('r', encoding='utf-8') as archivo:
	lineas = archivo.readlines()
	encabezados = lineas[0].strip().split(',')
	nuevose = [encabezados[columna] for columna in range(len(encabezados)) if columna not in indices_a_eliminar]
	
	R = map(lambda linea : linea.strip().split(','),lineas)
	R = map(lambda registro: [registro[columna] for columna in range(len(registro)) if columna not in indices_a_eliminar],R)
	R = filter(lambda lista: lista[5] == 'ACTIVO', R)
	R = filter(lambda lista: lista[70] != 'actualizar@hotmail.com' and lista[70].strip() != '',R)
	R = filter(lambda lista: lista[69].strip() != '' or lista[68].strip() != '',R)
	
	I = list(R)
	check_tec = list(filter(lambda registro: registro[1] == 'INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO',I))
	
	if check_tec:
		registro = check_tec[0]
		cv_cct = registro[0]
		latitud = registro[30]
		longitud = registro[31]
		print(f" CV_CCT: {cv_cct}\n Latitud: {latitud}\n Longitud: {longitud}")
	else:
		print("No se encontró el Instituto Tecnológico de San Juan del Río")
	
	T = I
	#print(T)

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
print()
print(" ##R08## ".center(60,"-"))
def visor_hexadecimal():
	while True:
		origen = input("Dame el nombre del archivo de origen: ")
		if not '.' in origen:
			origen += '.txt'
		try:
			with open(origen, 'rb') as archivo_origen:
				break
		except FileNotFoundError:
			print("Archivo no encontrado, intenta de nuevo")
	
	destino = input("Dame el nombre del archivo de destino: ")
	if not '.' in destino:
		destino += '.txt'
	try:
		with open(origen, 'rb') as archivo_origen, open(destino, 'w') as archivo_destino:
			bytess = iter(lambda: archivo_origen.read(1), b'')
			hexx = map(lambda byte: format(ord(byte), '02X'), bytess)
			
			first = True
			for hex_byte in hexx:
				if not first:
					archivo_destino.write(' ')
				archivo_destino.write(hex_byte)
				first = False
		
		print("Listo! archivo generado")
		
	except Exception as e:
		print(f"Error: {e}")

visor_hexadecimal()

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
