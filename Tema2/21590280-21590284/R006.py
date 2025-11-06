from pathlib import Path
##R006##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde CONTACTO_C_TELEFONO
y CONTACTO_C_CELULAR esten vacias
"""


def CT(fila):
    U = fila[70]
    F=fila[71]  
    R = [ U == '' or F == '']
    return any(R)


Arch = Path('.').resolve()
print('Carpeta actual:', Arch)
CSVAR = Arch / 'cct22.csv'
if CSVAR.exists():
    print('El archivo CSV existe')
    with CSVAR.open('rt', encoding='utf-8-sig') as archivo:
        A = archivo.readline()
        F = lambda B: B.strip().split(',')
        R = map(F, archivo)
        U = filter(CT, R)
        V=list(U)[:2]
        print(V)
        
else:
    print('El archivo CSV no existe')