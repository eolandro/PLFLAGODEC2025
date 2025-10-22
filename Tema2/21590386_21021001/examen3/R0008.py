##R008##
##50##

# Un visor hexadecimal es un programa que permite visualizar el contenido
# de cualquier archivo, byte a byte en formato hexadecimal

# por ejemplo si abres un block de notas y escribes la palabra "hola"
# y lo guardas con el nombre de saludo.txt se vería en un visor
# hexadecimal de la siguiente manera:

# ========================================================================
# eolandro@eolap:~$ hd saludo.txt
# 00000000  68 6f 6c 61                                       |hola|
# 00000004
# ========================================================================

# Realiza un programa que pida dos archivos uno de origen y otro de destino.
# Vas a leer el archivo de origen byte por byte y lo vas a guardar en el
# archivo de destino pero en formato hexadecimal, ten cuidado no debes
# cargar el archivo completo en memoria en un solo paso
# Un Ejemplo con el ya mencionado archivo saludo.txt:

# ========================================================================
# python visorhexa.py
# Dame el nombre del archivo de origen: saludo.txt
# Dame el nombre del archivo de destino: saludo_hex.txt
# Listo!
# ========================================================================

# Si abrimos saludo_hex.txt
# veríamos

# 68 6F 6C 61


def visorHex(cadena: str):
    cadena_l = list(bytes(cadena.encode("utf-8")).hex().upper())
    cad_hex = [cadena_l[i : i + 2] for i in range(0, len(cadena_l), 2)]
    resultado = " ".join(["".join(par) for par in cad_hex])

    return resultado


print("\n##R008##\n")

archivo = input("Dame el nombre del archivo de origen\n> ")

try:
    with open(archivo, "r") as f:
        hex_msj = visorHex(f.read())

    if archivo.endswith(".txt"):
        archivo = archivo.replace(".txt", "_hex.txt")
    else:
        archivo += "_hex"

    with open(archivo, "w") as f:
        f.write(hex_msj)
    print(f"El hex fue guardado en {archivo}\n")
except:
    print("El archivo no existe")
