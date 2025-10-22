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

def leer_bytes(archivo_origen):
    ruta = Path(archivo_origen)
    if not (ruta.exists() and ruta.is_file()):
        print(f"Error: El archivo {archivo_origen} no existe.")
        return  # salir de generador
    with ruta.open('rb') as f:
        while True:
            byte = f.read(1)
            if not byte:
                break
            yield byte

def escribir_hex(archivo_destino, bytes_iter):
    with open(archivo_destino, 'w', encoding='utf-8') as f:
        for b in bytes_iter:
            f.write(f"{b.hex().upper()} ")
    print("Listo!")

def mostrar(archivo):
    ruta = Path(archivo)
    if not (ruta.exists() and ruta.is_file()):
        print(f"Error: El archivo {archivo} no existe.")
        return
    with ruta.open('r', encoding='utf-8') as f:
        contenido = f.read()
        print("Contenido de", archivo)
        print(contenido)



# Pruebas rapidas
# origen = "saludo.txt".strip()
# destino = "saludo_hex.txt".strip()
# Pruebas finales
origen = input("Dame el nombre del archivo de origen: ").strip()
destino = input("Dame el nombre del archivo de destino: ").strip()
bytes = leer_bytes(origen)
escribir_hex(destino, bytes)
mostrar(origen)
mostrar(destino)
