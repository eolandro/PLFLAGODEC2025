##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""

from pathlib import Path

CarpetaActual = Path('.').resolve()
print(f"La ruta actual es {CarpetaActual}")

CSVAR= CarpetaActual / 'cct22.csv'
if CSVAR.exists():
     print(f"El archivo {CSVAR} existe")
          
else:
    print(f"El archivo {CSVAR} no existe")


##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""
from pathlib import Path

CarpetaActual = Path('.').resolve()
print(f"La ruta actual es {CarpetaActual}")

CSVAR= CarpetaActual / 'cct22.csv'
if CSVAR.exists():
     print(f"El archivo {CSVAR} existe")
     with CSVAR.open("rt", encoding="ISO-8859-1") as archivo:
          A = archivo.readline()
          F=lambda B: B.strip().split(',')
          R=map(F,archivo)
          S=map(lambda lista: lista[0:],R)
          print(list(S))
else:
    print(f"El archivo {CSVAR} no existe")

##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""
from pathlib import Path


def elimActivos(iteradorC):
     filtro= filter(lambda lista: "ACTIVO" not in lista,iteradorC)
     return filtro


CarpetaActual = Path('.').resolve()
print(f"La ruta actual es {CarpetaActual}")

CSVAR= CarpetaActual / 'cct22.csv'
if CSVAR.exists():
     print(f"El archivo {CSVAR} existe")

     with CSVAR.open("rt", encoding="ISO-8859-1") as archivo:
          A = archivo.readline()
          F=lambda B: B.strip().split(',')
          R=map(F,archivo)
          S=map(lambda lista: lista[0:],R)
          R3=elimActivos(S)
          print(list(R3))
          
else:
    print(f"El archivo {CSVAR} no existe")



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


def elimActivos(iteradorC):
     filtro= filter(lambda lista: "ACTIVO" not in lista,iteradorC)
     return filtro

def eliminarColum(iteradorSnAct, cantidad):
     eliminacion= map(
          lambda fila: [fila[i] for i in range(len(fila)) if i < (len(fila) - cantidad)],iteradorSnAct)
     return eliminacion

CarpetaActual = Path('.').resolve()
print(f"La ruta actual es {CarpetaActual}")

CSVAR= CarpetaActual / 'cct22.csv'
if CSVAR.exists():
     print(f"El archivo {CSVAR} existe")

     with CSVAR.open("rt", encoding="ISO-8859-1") as archivo:
          A = archivo.readline()
          F=lambda B: B.strip().split(',')
          R=map(F,archivo)
          S=map(lambda lista: lista[0:],R)
          R3=elimActivos(S)
          R4=eliminarColum(R3,15)
          print (list(R4))
          
else:
    print(f"El archivo {CSVAR} no existe")

##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""
from pathlib import Path


def elimActivos(iteradorC):
     filtro= filter(lambda lista: "ACTIVO" not in lista,iteradorC)
     return filtro

def eliminarColum(iteradorSnAct, cantidad):
     eliminacion= map(
          lambda fila: [fila[i] for i in range(len(fila)) if i < (len(fila) - cantidad)],iteradorSnAct)
     return eliminacion

def eliminarCorreo(iteradorSnCol,encabezado):
     pos_email = encabezado.index('CONTACTO_C_EMAIL')
     filtro= filter(
     lambda fila: (fila[pos_email] != "actualizar@hotmail.com" and  fila[pos_email] != ""), iteradorSnCol)
     return filtro

CarpetaActual = Path('.').resolve()
print(f"La ruta actual es {CarpetaActual}")

CSVAR= CarpetaActual / 'cct22.csv'
if CSVAR.exists():
     print(f"El archivo {CSVAR} existe")

     with CSVAR.open("rt", encoding="ISO-8859-1") as archivo:
          A =archivo.readline().strip().split(',')
          F=lambda B: B.strip().split(',')
          R=map(F,archivo)
          S=map(lambda lista: lista[0:],R)
          R3=elimActivos(S)
          R4=eliminarColum(R3,15)
          R5=eliminarCorreo(R4,A)
          print(list(R5))

          
else:
    print(f"El archivo {CSVAR} no existe")


##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""
encabezados = datos_filtrados[0]

if "CONTACTO_C_TELEFONO" in encabezados and "CONTACTO_C_CELULAR" in encabezados:
    col_telefono = encabezados.index("CONTACTO_C_TELEFONO")
    col_celular = encabezados.index("CONTACTO_C_CELULAR")
    
    # Filtramos filas donde AMBOS campos estén vacíos
    datos_limpios = [
        fila for fila in datos_finales  #Usamos datos_finales de R005, donde se aplicaron los filtros previos
        if fila[col_telefono].strip() != "" or fila[col_celular].strip() != ""
    ]
    
    print(datos_limpios)
else:
    print("Error: Revisa si las columnas de teléfono/celular ya fueron eliminadas previamente")


##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""
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
def visor_hexadecimal():
    origen = input("Dame el nombre del archivo de origen: ")
    destino = input("Dame el nombre del archivo de destino: ")
    
    with open(origen, 'rb') as arch_origen, open(destino, 'w') as arch_destino:
        def leer_byte(resto=b''):
            byte = arch_origen.read(1)
            if not byte:
                return resto
            return leer_byte(resto + byte.hex().encode() + b' ')
        
        arch_destino.write(leer_byte().decode())
    print("Archivo creado")

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

def compoGen(initial):
    current = initial
    func = yield None
    while True:
        if func is None:
            yield current
            return
        current = func(current)
        func = yield current

def fun0(s):
    return s.split(',')

def fun1(parts):
    id_int = int(parts[0])
    name = parts[1]
    nums = list(map(float, parts[2:]))
    return [id_int, name, nums]

def fun2(data):
    nums = data[2]
    avg = sum(nums) / len(nums) * 100.0
    return [data[0], data[1], avg]

def fun3(x):
    return x

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = compoGen(R)
next(T)

R = T.send(fun0)
R = T.send(fun1)
R = T.send(fun2)
R = T.send(fun3)
R = T.send(None)

print(R)
