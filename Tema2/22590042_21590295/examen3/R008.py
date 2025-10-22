def g_bytes(archivo):
    return map(lambda b: b, archivo)
def g_aplanar(R):
    return map(lambda b: b.to_bytes(1, 'little'), next(iter(R)))
def g_hex(R):
    R_filtrado = filter(lambda b: b[0] > 32, R)
    return map(lambda b: hex(b[0])[2:].zfill(2).upper() + ' ', R_filtrado)

def g_ascii(R):
    return map(lambda s: s.encode('ascii'), R)

O = input("Dame el nombre del archivo de origen: ")
D = input("Dame el nombre del archivo de destino: ")

with open(O, 'rb') as f:
    R = g_bytes(f) 
    R = g_aplanar(R) 
    R = g_hex(R)   
    R = g_ascii(R) 
    with open(D, 'wb') as w:
        w.writelines(R)

print("Listo!")
#Lo tuvimos que ejecutar desde el PowerShell para no tener problemas con la ruta 
# C:\Users\Thinkpad\AppData\Local\Programs\Python\Python312\python.exe .\Ejer_08.py 
