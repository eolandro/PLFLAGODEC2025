from pathlib import Path
##R002##
##10##
"""
Del archivo cct22.csv, usando monads convierte  y separa cada linea del 
archivo en una lista de listas
"""

Arch = Path('.').resolve()
print('Carpeta actual:', Arch)
CSVAR = Arch / 'cct22.csv'
if CSVAR.exists():
    print('El archivo CSV existe')
    with CSVAR.open('rt', encoding='utf-8-sig') as archivo:  
        A = archivo.readline()
        F = lambda B: B.strip().split(',')
        R = map(F, archivo)
        V = list(R)[:1]
        print(V)
else:
    print('El archivo CSV no existe')