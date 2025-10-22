#Abelardo Garduño Fuertes 22590040
#Alejandro Pérez Piña 22590068

##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""

from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        print(c)
    print("\n El archivo existe")
else:
    print("\n El archivo no existe")


##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R2=list(R)[:1]
        print(R2)
else:
    print("\n El archivo no existe")


##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""

from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R=filter(lambda linea:linea[7]=='ACTIVO',R)
        R2=list(R)
        print(R2)
else:
    print("\n El archivo no existe")

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

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R=filter(lambda linea:linea[7]=='ACTIVO',R)
        eliminar=[2,3,78,79,80,81,82,83,84,85,86,87,88,89,90,91]
        A=map(lambda linea:[linea[i] for i in range(len(linea)) if i not in eliminar],R)

        #A=map(lambda linea:[linea[i] for i in range(2)],R)
        #B=map(lambda linea:[linea[j] for j in range(4,78)],R)
        R2=list(A)
        print(R2)
else:
    print("\n El archivo no existe")

##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""

from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R=filter(lambda linea:linea[7]=='ACTIVO',R)
        eliminar=[2,3,78,79,80,81,82,83,84,85,86,87,88,89,90,91]
        A=map(lambda linea:[linea[i] for i in range(len(linea)) if i not in eliminar],R)

        #A=map(lambda linea:[linea[i] for i in range(2)],R)
        #B=map(lambda linea:[linea[j] for j in range(4,78)],R)
        A=filter(lambda linea:linea[70]!='actualizar@hotmail.com' and linea[70]!='',A)
        R2=list(A)
        print(R2)
else:
    print("\n El archivo no existe")

##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""

from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R=filter(lambda linea:linea[7]=='ACTIVO',R)
        eliminar=[2,3,78,79,80,81,82,83,84,85,86,87,88,89,90,91]
        A=map(lambda linea:[linea[i] for i in range(len(linea)) if i not in eliminar],R)

        #A=map(lambda linea:[linea[i] for i in range(2)],R)
        #B=map(lambda linea:[linea[j] for j in range(4,78)],R)
        A=filter(lambda linea:linea[70]!='actualizar@hotmail.com' and linea[70]!='',A)
        A=filter(lambda linea:linea[68]!='' or linea[69]!='',A)
        R2=list(A)
        print(R2)
else:
    print("\n El archivo no existe")


##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""
from pathlib import Path

archivo=Path('cct22.csv')
if archivo.exists():
    with archivo.open("r", encoding="utf-8") as f:
        c=f.readlines()
        R=map(lambda linea:linea.strip().split(','),c)
        R=filter(lambda linea:linea[7]=='ACTIVO',R)
        eliminar=[2,3,78,79,80,81,82,83,84,85,86,87,88,89,90,91]
        A=map(lambda linea:[linea[i] for i in range(len(linea)) if i not in eliminar],R)

        #A=map(lambda linea:[linea[i] for i in range(2)],R)
        #B=map(lambda linea:[linea[j] for j in range(4,78)],R)
        A=filter(lambda linea:linea[70]!='actualizar@hotmail.com' and linea[70]!='',A)
        A=filter(lambda linea:linea[68]!='' or linea[69]!='',A)
        A=filter(lambda linea:linea[1]=='INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO',A)
        A=map(lambda linea:[linea[j] for j in range(len(linea)) if j in [0,30,31]],A)
        R2=list(A)
        print(R2)
else:
    print("\n El archivo no existe")


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
from pathlib import Path

source=input("\n Ingrese el nombre del archivo de origen (ejemplo: saludo.txt)>> ")
destination=input("\n Ingrese el nombre del archivo de destino (ejemplo: saludo_hex.txt)>> ")

archivoS=Path(source)

if archivoS.exists():
    with archivoS.open("r", encoding="utf-8") as s:
        c=s.read()
        A=[l for l in c]
        A=[hex(ord(lh)) for lh in A]
        A=[lhn[2:] for lhn in A]
        d=open(destination,"w")
        A=[d.write(str(i)+" ") for i in A]
        print("\n Listo!")


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
