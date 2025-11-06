from pathlib import Path
##R003##
##20##
"""
Del ejercicio anterior, elimina todas las filas donde C_ESTATUS sea 
diferente de ACTIVO
"""
def status(fila):
    U = fila[7]  
    R = ['ACTIVO' == U ]
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
        C = filter(status, R)
        N = list(C)[:2] 
        print(N)

else:
    print('El archivo CSV no existe')