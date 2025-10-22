from pathlib import Path
##R005##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_EMAIL sea 
igual a 'actualizar@hotmail.com' o esten vacias
"""
def correo(fila):
    U = fila[72]  
    R = ['actualizar@hotmail.com' == U, "" == U ]
    return not any(R) 

Arch = Path('.').resolve()
print('Carpeta actual:', Arch)
CSVAR = Arch / 'cct22.csv'
if CSVAR.exists():
    print('El archivo CSV existe')
    with CSVAR.open('rt', encoding='utf-8-sig') as archivo:
        A = archivo.readline()
        F = lambda B: B.strip().split(',')
        R = map(F, archivo)
        U = filter(correo, R)
        V=list(U)[:2]
        print(V)
        
else:
    print('El archivo CSV no existe')