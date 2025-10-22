from pathlib import Path
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